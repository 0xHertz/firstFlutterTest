// 类
import 'MeiJu.dart';

class Person{

  /**
   * 变量
   */
  // 基础类型
  late String name;
  late int age;
  late Colors skin;
  // 推导类型,不指定变量类型
  var dept;
  final id = 1; // 不可修改，可初始化
  static const father='me'; // 不可修改，不可初始化，可以被构造函数修改，static声明的属性，可以被类直接访问，否则只能被对象访问
  // 动态类型，可以执行subString函数
  dynamic mother='ssss';
  late String m = mother.subString(1);
  // Object类型，不可执行subString
  Object houmother = 'mmmmm';
  // 集合类型
  var jobs = ["teacher","cooker"];
  var habits = {"eat","drick"};
  var info = {
    "pro":"provalue",
    "xxx":"xxxvalue"
  };


/**
 * 构造函数
 */
  // 默认构造函数
  Person(String name){this.name = name;}
  // 更简化的写法 Person(this.name);
  // 命名构造函数
  Person.Mingming(this.name,this.age,this.skin);
  // 构造函数重定向
  Person.Rediert(String name):this._target(name,0);
  Person._target(this.name,this.age);

/**
 * 函数
 */
  // 普通函数
  void sayName(){
    print(this.name);
    // 箭头函数
    test(()=>print("箭头"));
  }
  // 函数嵌套
  void test(Function foo){
    foo();
  }
  // 函数参数 必选参数
  void canshu(String name,int age){}
  // 可选参数，顺序
  void xchanshu(String name,[int? age, String? dept]){}
  // 可选参数 命名
  void mchanshu(String name,{int? age}){}
  // 函数类型
  /**
   * typedef MyFunction = int function(int num1,int num2);
   * void test(Myfunction foo){
   *  foo(1,2)
   * }
   */

/**
 * getter setter函数自带，不需要写
 */

}

void main(){
  // 级联运算符
  var p = Person("x")
      ..name="h"
      ..age=1
      ..dept="none"
      ..sayName();
}