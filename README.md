# HighPrecisionCalculate-iOS
1. swift为我们带来了运算符的重载 这无疑为NSDecimalNumber的使用带来了极大的便利<br/>
2. 本项目为计算股票信息而创建，使用NSDecimalNumber在iOS平台实现高精度计算，重写运算符以提升开发效率<br/>
3. 重载了 ( 正 负 加 减 自增 自减 乘 除 取余 比较 ) 运算符, 添加了对于NSDecimalNumber的向上和向下取整函数，添加了快速的rounding方法<br/>
4. 支持直接与 Int Float Double 运算<br/>
5. 对 Int Float Double 添加并实现了decimalNumberValue方法，可以直接快速转换<br/>
6. 在Float和Double的转化方法中 使用了先转String再转NSDecimalNumber的实现方式 理由是直接转换的话会有精度问题，请看playground的测试代码就可以明白了<br/>
7. 只要遵循HighPrecisionable协议并实现方法，对应类的实例即可直接参与运算<br/>
8. String的decimalNumberValue的实现中会返回一个可选项，以方便错误排查<br/>
9. round方法对应四种 plain up down banker，分别代表 四舍五入，非0进位，不进位，四舍六入五留双（四舍六入五考虑，五后非零就进一，五后为零看奇偶，五前为偶应舍去，五前为奇要进一）<br/>
