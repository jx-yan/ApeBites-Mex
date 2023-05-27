class Sales {
  int? totalSalesToday; // total sales today
  int? totalSalesThisMonth; // total sales this month
  int? totalSalesThisYear; // total sales this year
  int? totalSales; // total sales all time
  int? num_orders; // total number of orders
  int? num_bags; // total quantity of bags sold
}


class Reservations {
  String? customer_name; // John Doe
  String? receiptId; // 20211010-0001
  String? reserve_datetime; // 2021-10-10 10:10:10
  String? status;// 0 = pending, 1 = confirmed, 2 = cancelled, 3 = completed
  int? quantity; // 10
}

class Account {
  String? mexName; // John Doe
  String? storeName; // BreadTalk @ Tampines Mall
  double? storeBagPrice; // 3.99
  String? storeCategory; // Bakery
  String? storeOpeningHours; // 10:00 - 22:00
  String? storeAddress; // 4 Tampines Central 5, #01-32, Singapore 529510
  String? storeContact; // +65 6789 0123
  String? storeEmail; // breadtalk@tampines
  String? storeWebsite; // https://www.breadtalk.com.sg/
  String? storeLogo; // https://www.breadtalk.com.sg/images/logo.png
  String? storeBanner; // https://www.breadtalk.com.sg/images/banner.png
  String? storeDescription; // BreadTalk is a distinctive, award-winning Singapore brand that has gained international appeal. It is renowned for the way it has revolutionized the culture of bread consumption with its visually appealing and creative products. Since its opening in Singapore in 2000, BreadTalk has grown to become a highly popular lifestyle bakery chain with its wide variety of freshly-baked breads and cakes. Today, you can enjoy BreadTalk's award-winning products in 16 countries around the world.
  
}

class Listing {
   String? imageLink; // https://www.breadtalk.com.sg/images/bag.png
   int? listed_bags_num; // 10
   String? collection_datetime; // 2021-10-10 10:00 - 2021-10-10 22:00
   DateTime? datetime_created; // 2021-10-10 10:10:10
   DateTime? datetime_updated; // 2021-10-10 10:10:10
}

