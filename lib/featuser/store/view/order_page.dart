import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet/core/widget/custom_form_text_widget.dart';
import 'package:pet/featuser/store/view_model/widget/filter_products.dart';
import 'package:pet/featuser/store/view_model/widget/list_order.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});


  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
        final focussearch = FocusNode();

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/bg_pet.png', fit: BoxFit.cover),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,

            color: const Color.fromARGB(
              255,
              255,
              255,
              255,
            ).withValues(alpha: 0.5),
          ),
          Column(
            children: [

              Padding(
                padding: EdgeInsetsGeometry.directional(
                  start: 20.w,
                  top: 70.h,
                  end: 5.w,
                  bottom: 20.h,
                ),
                child: Text(
                  "Track your order status",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: const Color.fromARGB(255, 16, 75, 19),
                  ),
                ),
              ),
                  Padding(
                  padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 60.h,
                          child: CustomFormTextWidget(
                            myfocus: focussearch,
                            controller: searchController,
                            typeinput: TextInputType.text,
                            hinttext: 'Search for a order',
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: const Color.fromARGB(255, 16, 75, 19),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                        child:FilterProducts()
                      ),
                    ],
                  ),
                ),
                

              Expanded(child: ListOrder()),
    
            ],
            
          ),
        ],
      ),
    );
  }
}
