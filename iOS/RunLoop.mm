{"objectClass":"NSDictionary","root":{"objectClass":"MindNode","ID":"AQ8VF","rootPoint":{"objectClass":"CGPoint","x":415,"y":709.5},"lineColorHex":"#BBBBBB","children":{"0":{"objectClass":"MindNode","ID":"28H18","lineColorHex":"#DC306C","children":{"0":{"objectClass":"MindNode","ID":"23Z51","lineColorHex":"#DC306C","text":"Runloop是通过内部维护一个事件循环来对事件、消息进行管理的一个对象"},"1":{"objectClass":"MindNode","ID":"1822O","lineColorHex":"#DC306C","text":"它是一个对象。 大家用C语言过main函数的都知道，main函数运行完成后程序就结束退出了。但是为什么iOS的App的main函数运行完之后APP还能一直运行呢？\n"},"2":{"objectClass":"MindNode","ID":"3KHYP","lineColorHex":"#DC306C","text":"这就是Runloop的功劳。 这也是Runloop最基本的应用。 （主线程的Runloop是自动开启）参考下面iOS的main函数\nint main(int argc, char * argv[]) {\n    @autoreleasepool {\n        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));\n    }\n} "},"3":{"objectClass":"MindNode","ID":"V7JRS","lineColorHex":"#DC306C","text":"一个线程对应一个RunLoop，基本作用就是保持程序的持续运行，处理app中的各种事件。通过runloop，有事运行，没事就休息，可以节省cpu资源，提高程序性能。（比如 Source 、 Timer 、 Observer ）"},"objectClass":"NSArray"},"text":"RunLoop 是什么"},"1":{"objectClass":"MindNode","ID":"S36SG","lineColorHex":"#BF58F5","children":{"0":{"objectClass":"MindNode","ID":"QT778","lineColorHex":"#BF58F5","text":"“接受消息->等待->处理” 的循环中，直到这个循环结束（比如传入 quit 的消息）"},"objectClass":"NSArray"},"text":"RunLoop的实现机制是什么"},"2":{"objectClass":"MindNode","ID":"Z7WSC","lineColorHex":"#26BBFF","children":{"0":{"objectClass":"MindNode","ID":"18068","lineColorHex":"#26BBFF","text":"Foundation [NSRunloop currentRunLoop];获得当前线程的RunLoop对象 \n[NSRunLoop mainRunLoop];获得主线程的Runloop对象"},"1":{"objectClass":"MindNode","ID":"23724","lineColorHex":"#26BBFF","text":"Core Foundation CFRunLoopGetCurrent();获得当前线程的RunLoop对象\nCFRunLoopGetMain();获得主线程的Runloop对象"},"objectClass":"NSArray"},"text":"Runloop是个对象，怎么获取"},"3":{"objectClass":"MindNode","ID":"8CKS3","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"H2197","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"71434","lineColorHex":"#37C45A","text":" NSRunloop 线程不安全，NSRunLoop 是 Cocoa 框架中的类(NSRunloop 不能调用其他线程的方法)"},"objectClass":"NSArray"},"text":"NSRunloop"},"1":{"objectClass":"MindNode","ID":"1601Y","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"69Z4V","lineColorHex":"#37C45A","text":" CFRunLoopRef 线程安全，CFRunLoopRef 是  Core Fundation 框架中的类"},"objectClass":"NSArray"},"text":"CFRunLoopRef"},"2":{"objectClass":"MindNode","ID":"21F11","lineColorHex":"#37C45A","children":{"0":{"objectClass":"MindNode","ID":"911XM","lineColorHex":"#37C45A","text":"\t•\tCFRunLoopRef\n\t•\tCFRunLoopModeRef // 模式\n\t•\tCFRunLoopSourceRef // 事件源\n\t•\tCFRunLoopTimerRef // 时间源\n\t•\tCFRunLoopObserverRef // 观察者"},"objectClass":"NSArray"},"text":"RunLoop 类 五个类"},"objectClass":"NSArray"},"text":"认识Runloop"},"objectClass":"NSArray"},"text":"RunLoop"}}