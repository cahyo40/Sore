import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/routes/app_route.dart';

import '../model/payment_model.dart';

class BookingConfirmationController extends GetxController {
  // list payment method
  final List<PaymentMethod> paymentMethods = [
    PaymentMethod(name: 'Credit Card', icon: Brands.mastercard_logo),
    PaymentMethod(name: 'Debit Card', icon: Brands.visa),
    PaymentMethod(name: 'PayPal', icon: Brands.paypal),
    PaymentMethod(name: 'Google Pay', icon: Brands.google_pay),
    PaymentMethod(name: 'Bank Transfer', icon: Brands.bank_of_america),
  ];
// payment selected
  Rxn<PaymentMethod> selectedPayment = Rxn<PaymentMethod>();
  // function to select payment
  void selectPayment(PaymentMethod payment) => selectedPayment.value = payment;
  // reset select payment
  void resetSelectPayment() => selectedPayment.value = null;
// check selected payment
  bool isSelectedPayment(PaymentMethod payment) =>
      selectedPayment.value == payment;
// check select payment is null or not
  bool isPaymentNull() => selectedPayment.value == null;
// button payment method
  void paymentMethod() {}
// button pay
  void btnPay() {
    Get.toNamed(AppRoute.BOOKINGSUCCESS);
  }

// button success at booking success
  void btnSuccess() {
    Get.close(3);
  }
}
