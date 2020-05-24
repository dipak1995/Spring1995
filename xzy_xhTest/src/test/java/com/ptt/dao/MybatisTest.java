package com.ptt.dao;
import com.ptt.domain.Bmb;
import com.ptt.domain.QueryVo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.InputStream;
import java.sql.Timestamp;
import java.util.List;

public class MybatisTest {
    /**
     * 报名表Bmb
     */
    private InputStream in;
    private SqlSession sqlSession;
    private IBmbDao bmbDao;

    /**
     * 测试之前执行，用于初始化
     */
    @Before
    public void init() throws Exception {
        //1、读取配置文件
        in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //2、创建SqlSession对象
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        //3、使用工厂生产SqlSession对象
        SqlSessionFactory factory = builder.build(in);
        //4、使用SqlSession创建Dao接口的代理对象
        sqlSession = factory.openSession();
        //5、使用代理对象执行方法
        bmbDao = sqlSession.getMapper(IBmbDao.class);
    }

    /**
     * 测试结束执行，用于提交事务和释放资源
     */
    @After
    public void destory() throws Exception {
        sqlSession.commit();
        sqlSession.close();
        in.close();
    }

    /**
     * 测试查询所有
     */
    @Test
    public void testFindAll(){
        List<Bmb> bmbs = bmbDao.findAll();
        for (Bmb bmb : bmbs){
            System.out.println(bmb);
        }
    }
    /**
     * 测试插入一条数据
     */
    @Test
    public void testSaveBmb() {
        Bmb bmb = new Bmb();
        bmb.setId(11);
        bmb.setName("孙晓鹏");
        bmb.setQq("45165794");
        bmb.setType("后端工程师");
        bmb.setJointime("2019-5-7");
        bmb.setSchool("学校");
        bmb.setStudy_id("5606");
        bmb.setDaily_link("http://www.jnshu.com/daily/95029?dailyType=others&total=13&page=1&uid=34292&sort=0&orderBy=3");
        bmb.setHope("起飞");

//        long time = System.currentTimeMillis();

//        Timestamp  t = new Timestamp(time);

//        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String x = sdf.format(time);

        bmb.setCreate_at(new Timestamp(System.currentTimeMillis()));
       //调用mapper完成添加
        int count = bmbDao.saveBmb(bmb);
        System.out.println("添加条数为：" + count);
    }

        /**
         * 测试根据id删除用户
         */
    @Test
    public void testremoveUserById() {
        //这里传的id为自己数据库中存在的id值
        int count = bmbDao.deleteBmb(12);
        System.out.println("删除条数为：" + count);

    }

    /**
     * 测试修改用户
     */
    @Test
    public void testupdateBmb() {
        //因为还没有编写根据id查询用户，所以模拟数据
        Bmb bmb = new Bmb();
        bmb.setName("update");
        bmb.setQq("12345");
        //id 为自己数据库中存在的值
        bmb.setId(11);
        int count = bmbDao.updateBmb(bmb);
        System.out.println("修改条数为：" + count);
        System.out.println(count ==1 ?"修改成功":"修改失败");
    }

    /**
     * 测试查询单个用户
     */
    @Test
    public void testgetBmbById() {
        Bmb bmb = bmbDao.getBmbById(11);
        System.out.println(bmb);
    }

    /**
     * 测试模糊查询
     */
    @Test
    public void testFindByName() {
        List<Bmb> bmbs = bmbDao.findByName("%王%");
        //使用Stream 流 + 方法引用，需要至少jdk8
        bmbs.forEach(System.out::println);
        //通过增强for循环来实现
       /* for (Bmb bmb : bmbs) {
            System.out.println(bmb);
        }*/
    }

    /**
     * 测试查询用户总数
     */
    @Test
    public void testCountBmb() {
        int count = bmbDao.countBmb();
        System.out.println("用户总记录数为：" + count);
    }

    /**
     * 测试添加用户，并获取id的返回值
     */
    @Test
    public void testSaveOneBmb() {
        Bmb bmb = new Bmb();
        bmb.setName("孙晓鹏");
        bmb.setQq("45165794");
        bmb.setType("后端工程师");
        bmb.setJointime("2019-5-7");
        bmb.setStudy_id("5606");
        bmb.setDaily_link("http://www.jnshu.com/daily/95029?dailyType=others&total=13&page=1&uid=34292&sort=0&orderBy=3");

        System.out.println("添加前:" + bmb);//null，integer 默认值为null

        //调用mapper完成添加
        int count = bmbDao.saveOneBmb(bmb);//
        System.out.println("添加条数为：" + count);
        System.out.println("添加后：" + bmb);//打印id值 14
        System.out.println(count == 1?"添加成功":"添加失败");

    }

    /**
     * 测试根据Vo查询
     */
    @Test
    public void testListBmbByVo() {
        QueryVo vo = new QueryVo();
        Bmb bmb = new Bmb();
        bmb.setName("%王%");
        vo.setBmb(bmb);

        List<Bmb> bmbs = bmbDao.listBmbByVo(vo);
        //bmbs.forEach(System.out::println);
        //通过增强for循环来实现
        for (Bmb b : bmbs) {
            System.out.println(b);
        }
    }
}



