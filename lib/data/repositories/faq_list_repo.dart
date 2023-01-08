import '../models/faq_questions_model.dart';

class FaqListRepo {
  List<FaqModel> getfaqList() {
    var randomText =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam augue nisl, consequat et justo sit amet, interdum feugiat est. Sed eu quam urna. Ut blandit turpis quis rutrum sodales. Etiam ornare justo sed tortor elementum consectetur. Vivamus pulvinar lorem quis elit mollis, eget fermentum elit facilisis. Sed cursus sed lacus nec egestas. Duis nec tincidunt purus. Aenean consequat lacus sit amet rhoncus tempor. Phasellus in lacus a purus tempus finibus. Ut cursus, nibh ac venenatis porta, justo mauris maximus velit, volutpat dignissim eros est quis lorem. Proin in ipsum et est posuere tincidunt ac vitae sem.';
    List<FaqModel> faqList = [];
    faqList.add(FaqModel(
        question: 'Question 1',
        text:
            'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.'));
    faqList.add(FaqModel(question: 'Question 2', text: randomText));
    faqList.add(FaqModel(question: 'Question 3', text: randomText));
    faqList.add(FaqModel(question: 'Question 4', text: randomText));
    return faqList;
  }
}
