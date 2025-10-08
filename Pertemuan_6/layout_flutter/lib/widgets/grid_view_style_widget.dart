import 'package:flutter/material.dart';
import 'package:layout_flutter/models/item.dart';

class GridViewStyleWidget extends StatelessWidget {
  final List<Item> items;
  final double itemWidth = 100;
  final double itemHeight = 148;
  final double gridPadding = 8;

  const GridViewStyleWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 320, // ubah ini untuk lebar maksimal tiap card
        crossAxisSpacing: gridPadding,
        mainAxisSpacing: gridPadding,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return _buildItemCard(item, context);
      },
    );
  }

  Widget _buildItemCard(Item item, BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: itemWidth / (itemHeight / 1.8),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Hero(
                  tag: item.imageUrl,
                  child: Image.asset(
                    item.imageUrl,
                    fit: BoxFit.cover,
                    height: 120,
                    width: double.maxFinite,
                  ),
                ),
              ),
            ),
            
            Container(
              padding: EdgeInsets.only(left: 6, right: 6, top: 12),
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 12,
                        color: Colors.grey[500],
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: Text(
                          item.location,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    item.name,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  // Kurangi jarak antara nama dan bintang
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, size: 16, color: Colors.amber),
                      SizedBox(width: 3),
                      Text('${item.star}', style: TextStyle(fontSize: 13)),
                    ],
                  ),

                  // Hapus jarak bawah deskripsi dengan meniadakan padding bawah
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Text(
                      item.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
