# UI VFX_DISSOLVE 基础UI溶解

---

### 方法

| 方法名        | 返回值         | 参数     | 参数说明 | 说明                                                    |
| ---------- |:-----------:|:------:|:----:| ----------------------------------------------------- |
| Start      | void        | 无      | 无    | 开始动画                                                  |
| Start      | void        | Action | 无    | 开始动画，带结束委托                                            |
| StartAsync | IEnumerator | 无      | 无    | 开始异步动画                                                |
| Awake      | void        | 无      | 无    | 收集需要播放动画的对象，只收集``Image``和``Text``组件，不包括``TMP_Text``组件 |

### 属性

| 属性名         | 类型             | 默认值    | 读写  | 说明                     |
| ----------- |:--------------:|:------:|:---:| ---------------------- |
| EffEnd      | bool           | false  | 读   | 动画状态，false表示动画结束或未播放   |
| Curve       | AnimationCurve | Linear | 读写  | 动画曲线                   |
| EffTime     | float          | 1      | 读写  | 持续时间                   |
| Seed        | float          | 0      | 读写  | 溶解噪声图的随机种子             |
| Scale       | float          | 3      | 读写  | 溶解噪声图的缩放               |
| Reverse     | bool           | false  | 读写  | 是否反向播放，默认从有到无          |
| StrokeSize  | float          | 0.01   | 读写  | 溶解的描边大小，从未溶解区域到溶解区域的描边 |
| StrokeColor | Color          | yellow | 读写  | 描边的颜色                  |
| Material    | Material       |        | 读写  | 动画时使用的材质，动画播放过后才会创建才有值 |

---

### 使用注意事项

- 重复调用Start会使得上一个动画被取消

- 调用Start之前请调用Awake方法

- 并非所有对象都支持溶解，例如TMP_Text就不支持

- 对Text的效果较差

- 完全溶解至视觉不可见时还有0.1-0.05s左右的时间等待描边溶解完成，但有的时候描边已经不可见，但依然会产生这点时间的误差

---

## 目录
- [使用指南](https://github.com/FQMWakeZero/ShaderTools/blob/main/MD/VFXController%20%E8%A7%86%E8%A7%89%E6%8E%A7%E5%88%B6%E5%99%A8%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97.md)
- [重要的类](https://github.com/FQMWakeZero/ShaderTools/blob/main/MD/%E9%87%8D%E8%A6%81%E7%9A%84%E7%B1%BB.md)
- [UI VFX_DISSOLVE 基础UI溶解](https://github.com/FQMWakeZero/ShaderTools/blob/main/MD/UI_VFX_DISSOLVE%20%E5%9F%BA%E7%A1%80UI%E6%BA%B6%E8%A7%A3.md)
- [UI VFX_SELF_SAMPLING_BLUR 自采样模糊](https://github.com/FQMWakeZero/ShaderTools/blob/main/MD/UI%20VFX_SELF_SAMPLING_BLUR%20%E8%87%AA%E9%87%87%E6%A0%B7%E6%A8%A1%E7%B3%8A.md)
---

```
/*
                   _ooOoo_
                  o8888888o
                  88" . "88
                  (| -_- |)
                  O\  =  /O
               ____/`---'\____
             .'  \\|     |//  `.
            /  \\|||  :  |||//  \
           /  _||||| -:- |||||-  \
           |   | \\\  -  /// |   |
           | \_|  ''\---/''  |   |
           \  .-\__  `-`  ___/-. /
         ___`. .'  /--.--\  `. . __
      ."" '<  `.___\_<|>_/___.'  >'"".
     | | :  `- \`.;`\ _ /`;.`/ - ` : | |
     \  \ `-.   \_ __\ /__ _/   .-` /  /
======`-.____`-.___\_____/___.-`____.-'======
                   `=---='
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
            佛祖保佑       永无BUG
*/
```
