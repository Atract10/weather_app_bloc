import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/faq_questions_model.dart';
import '../data/repositories/faq_list_repo.dart';

part 'faq_list_bloc.freezed.dart';

@freezed
abstract class FaqListEvent with _$FaqListEvent {
  const FaqListEvent._();

  const factory FaqListEvent.setup() = _SetupFaqListEvent;
}

@freezed
abstract class FaqListState with _$FaqListState {
  const FaqListState._();

  const factory FaqListState.initial() = _InitialFaqListState;
  const factory FaqListState.loaded({required List<FaqUIModel> faqList}) = _LoadedFaqListState;
}

class FaqListBLoC extends Bloc<FaqListEvent, FaqListState> {
  FaqListBLoC({required FaqListRepo faqListRepo
  }) : _faqListRepo = faqListRepo, super(const _InitialFaqListState()) {
    on<FaqListEvent>(
      (event, emitter) => event.map<Future<void>>(
        setup: (event) => _setup(event, emitter),
      ),
    );
  }
 final FaqListRepo _faqListRepo;

  Future<void> _setup(
      _SetupFaqListEvent event, Emitter<FaqListState> emitter) async {
    emitter(const FaqListState.initial());
    final List<FaqUIModel> faqListUI = [];
    final faqList = _faqListRepo.getfaqList();
    for (var e in faqList) {
      faqListUI.add(FaqUIModel.makeViewModel(e));
    }
    emitter(FaqListState.loaded(faqList: faqListUI));
  }
}


class FaqUIModel {
  final String question;
  final String text;
  bool isOpened;

  factory FaqUIModel.makeViewModel(FaqModel faqModel) {
    var question = faqModel.question;
    var text = faqModel.text;
    var isOpened = false;
    return FaqUIModel(question, text, isOpened);
  }

  FaqUIModel(this.question, this.text, this.isOpened);
}