
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StakeGraps extends StatefulWidget {
  const StakeGraps({Key? key}) : super(key: key);

  @override
  State<StakeGraps> createState() => _StakeGrapsState();
}

class _StakeGrapsState extends State<StakeGraps> {

  List<Data> data = [
    Data("Jan", 30, 40, 50, 60, 70, 60),
    Data("Feb", 40, 45, 20, 10, 10, 50),
    Data("Mrc", 30, 20, 30, 40, 50, 20),
    Data("Apr", 45, 42, 55, 65, 75, 22),
  ];

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Graph Chart"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SfCartesianChart(
              title: ChartTitle(text: 'Half yearly sales analysis'),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              //tooltipBehavior: TooltipBehavior(enable: true),

              series: <ChartSeries <Data, String>>[


                StackedLineSeries<Data, String>(
                  dataSource: data,
                  xValueMapper:(Data exp,_) =>exp.Catagoeies ,
                  yValueMapper: (Data exp,_) =>exp.Dealer1,
                   name: 'Dealer 1',
              // Enable data label
              dataLabelSettings: DataLabelSettings(isVisible: true)),
                StackedLineSeries<Data, String>(
                    dataSource: data,
                    xValueMapper:(Data exp,_) =>exp.Catagoeies ,
                    yValueMapper: (Data exp,_) =>exp.Dealer2,
                    name: 'Dealer2',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true)),
                StackedLineSeries<Data, String>(
                    dataSource: data,
                    xValueMapper:(Data exp,_) =>exp.Catagoeies ,
                    yValueMapper: (Data exp,_) =>exp.Dealer3,
                    name: 'Dealer3',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true)),
                StackedLineSeries<Data, String>(
                    dataSource: data,
                    xValueMapper:(Data exp,_) =>exp.Catagoeies ,
                    yValueMapper: (Data exp,_) =>exp.Dealer4,
                    name: 'Dealer4',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true)),
                StackedLineSeries<Data, String>(
                    dataSource: data,
                    xValueMapper:(Data exp,_) =>exp.Catagoeies ,
                    yValueMapper: (Data exp,_) =>exp.Dealer5,
                    name: 'Dealer5',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true)),
                StackedLineSeries<Data, String>(
                    dataSource: data,
                    xValueMapper:(Data exp,_) =>exp.Catagoeies ,
                    yValueMapper: (Data exp,_) =>exp.Dealer6,
                    name: 'Dealer6',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true)),


              ],
              primaryXAxis: CategoryAxis(),
            ),
          ),


        ],
      ),
    );
  }

}



class Data{
 final String Catagoeies;
 final num Dealer1;
 final num Dealer2;
 final num Dealer3;
 final num Dealer4;
 final num Dealer5;
 final num Dealer6;

 Data(this.Catagoeies,this.Dealer1,this.Dealer2,this.Dealer3,this.Dealer4,this.Dealer5,this.Dealer6);


}

