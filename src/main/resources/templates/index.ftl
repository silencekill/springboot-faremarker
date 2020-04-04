<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
</head>
<body>
    <table>
        <tr>
            <td>序号</td>
            <td>姓名</td>
            <td>地址</td>
        </tr>
        <#list users as user>
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.address}</td>
                <td>
                    <#if user.gender%2==0>
                        男
                    <#elseif user.gender%2==1>
                        女
                    <#else>
                        未知
                    </#if>
                </td>
                <td>


                <#switch user.gender%2>
                    <#case 1>
                        男
                    <#break>

                    <#case 0>
                        女
                    <#break>

                    <#default>
                    ...
                </#switch>
                </td>
            </tr>
        </#list>
    </table>
</body>
</html>