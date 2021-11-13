const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm1428t/",
            name: "ssm1428t",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm1428t/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "阅读角图书管理系统"
        } 
    }
}
export default base
