<#import "template.ftl" as layout />
<@layout.mainLayout title="New Employee">
    <form action="/admin/user" method="post">
        <div class="form-group">
            <label for="name">Login</label>
            <input type="text" class="form-control" id="login" name="login" placeholder="Enter Name" value="${(user.login)!}">
        </div>
        <div class="form-group">
            <label for="name">Password</label>
            <input type="text" class="form-control" id="password" name="password" placeholder="Enter Password" value="${(user.password)!}">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" value="${(user.email)!}">
        </div>
        <div class="form-group">
            <label for="city">FullName</label>
            <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter FullName" value="${(user.fullName)!}">
        </div>
        <div class="form-group">
            <label for="city">Role</label>
            <select class="form-control" id="role" name="role">
                 <#list roles as role>
                    <#if user?has_content && user.role == role>
                        <option value="${role}" selected>${role}</option>
                    <#else>
                        <option value="${role}">${role}</option>
                    </#if>
                 </#list>
            </select>
        </div>

        <input type="hidden" id="action" name="action" value="${action}">
        <input type="hidden" id="id" name="id" value="${(user.id)!}">
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</@layout.mainLayout>