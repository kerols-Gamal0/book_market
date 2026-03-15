import 'package:flutter/material.dart';
import 'model.dart';

Widget buildHorizontalSection({
  required String title,
  required List<Widget> items,
  required double height,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See all",
                style: TextStyle(color: Color(0xff54408C)),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: height,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemBuilder: (context, index) => items[index],
        ),
      ),
    ],
  );
}

Widget buildBookItem(BookModel book, BuildContext context) {
  return GestureDetector(
    onTap: () {
      showBookDetails(context, book, 1, (value) {});
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            book.image,
            height: 160,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 110,
          child: Text(
            book.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          book.price,
          style: const TextStyle(
            color: Color(0xff54408C),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget buildVendorItem(VendorModel vendor) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey.shade200),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: const Color(0xffF9F9F9),
        child: Image.asset(vendor.logo, fit: BoxFit.cover),
      ),
    ),
  );
}

Widget buildAuthorItem(AuthorModel author) {
  return Column(
    children: [
      CircleAvatar(radius: 40, backgroundImage: AssetImage(author.image)),
      const SizedBox(height: 8),
      Text(author.name, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(
        author.job,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ],
  );
}

void showBookDetails(
  BuildContext context,
  BookModel book,
  int quantity,
  Function(int) onUpdate,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setModalState) {
          return DraggableScrollableSheet(
            initialChildSize: 0.9,
            maxChildSize: 0.95,
            minChildSize: 0.5,
            expand: false,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          book.image,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            book.title,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(Icons.favorite, color: Colors.deepPurple),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/images/v3.png", height: 30),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          ...List.generate(
                            4,
                            (index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                          ),
                          const Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "(4.0)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra dignissim ac ac ac. Nibh et sed ac, eget malesuada.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (quantity > 1) {
                                      setModalState(() => quantity--);
                                      onUpdate(quantity);
                                    }
                                  },
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xffE8E8E8),
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  child: Text(
                                    "$quantity",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setModalState(() => quantity++);
                                    onUpdate(quantity);
                                  },
                                  child: const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xff54408C),
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text(
                            book.price,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff54408C),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "Continue shopping",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                side: const BorderSide(
                                  color: Color(0xffF4F4F4),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "View cart",
                                style: TextStyle(color: Color(0xff54408C)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              );
            },
          );
        },
      );
    },
  );
}
