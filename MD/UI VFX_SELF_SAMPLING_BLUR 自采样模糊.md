# UI VFX_SELF_SAMPLING_BLUR 自采样模糊

---

### 方法

| 方法名   | 说明           |
| ----- | ------------ |
| Awake | 调用Awake以应用效果 |

### 属性

| 属性名           | 类型       | 默认值 | 说明       |
| ------------- |:--------:|:---:| -------- |
| Material      | Material |     | 所使用的材质   |
| BlurAmount    | float    | 0   | 模糊的强度    |
| BlurRange     | float    | 2.5 | 每个点的采样范围 |
| SampleCount   | int      | 3   | 采样次数，奇数  |
| BlurIteration | int      | 1   | 模糊的迭代次数  |

### 使用注意事项

- 模糊的迭代次数高了会失真，除非你就是想要这个效果，否则建议就只有1

- 采样次数多了也会失真，也建议只有3或者1

- 模糊效果对Text组件支持不会很好

- 模糊效果对TMP_Text组件效果无任何支持

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
