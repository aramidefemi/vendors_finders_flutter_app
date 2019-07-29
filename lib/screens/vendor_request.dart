import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vendors_finder/components/header.dart';
import 'package:vendors_finder/containers/vendor_request_form.dart';
import 'package:vendors_finder/styles/texts.dart';

class VendorRequest extends StatelessWidget {
  VendorRequest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[simpleHeader('Vendor Request'),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0
            ),
            child: VendorRequestForm(),

          )
        ),
        SliverToBoxAdapter(
          child: new Text(
                      'Terms and conditions apply',
                      style: textStyles['small'],
                      textAlign: TextAlign.center,
                    ),
        ),
        ],
      ),
    );
  }
}
