<#include "macro-home.ftl">
<@home "settings">
<br/>
<div class="content">
    <div class="module">
        <div class="module-header fn-clear">
            <a rel="nofollow" href="/member/${currentUser.userName}">${currentUser.userName}</a>
            <h2>${profilesLabel}</h2>
            <span>(${currentUser.userEmail})</span>
        </div>
        <div class="module-panel form fn-clear">
            <label>URL</label><br/>
            <input id="userURL" type="text" value="${currentUser.userURL}"/>
            <span style="top: 50px; right: 24px;"></span>

            <label>QQ</label><br/>
            <input id="userQQ" type="text" value="${currentUser.userQQ}" />
            <span style="right:24px;top:118px;"></span>

            <label>${userIntroLabel}</label><br/>
            <textarea id="userIntro">${currentUser.userIntro}</textarea>
            <span style="right:24px;top:205px;"></span><br/>

            <label>${avatarLabel}</label><br/>
            <div class="fn-clear"></div>
            <input name="avatar" type="radio" value="0" <#if currentUser.userAvatarType == 0>checked</#if> />
                   <a target="_blank" href="http://gravatar.com">Gravatar</a><br/>
            <input name="avatar" type="radio" value="1" <#if currentUser.userAvatarType == 1>checked</#if>/>
                   <input id="avatarURL" type="text" placeholder="${avatarURLLabel}" style="width: 97%;" value="${currentUser.userAvatarURL}">

            <br/><br/>
            <span id="profilesTip" style="right: 95px; top: 339px;"></span>
            <button class="green fn-right" onclick="Settings.update('profiles')">${saveLabel}</button>
        </div>
    </div>

    <div class="module">
        <div class="module-header">
            <h2>${syncLabel}</h2>
        </div>
        <div class="module-panel form fn-clear">
            <label>B3log Key</label>
            <input id="soloKey" type="text" value="${currentUser.userB3Key}" /> 
            <span style="right:24px;top:49px;"></span><br/>

            <label>${clientArticleLabel}</label>
            <input id="soloPostURL" type="text" value="${currentUser.userB3ClientAddArticleURL}" />
            <span style="right:24px;top:118px;"></span><br/>

            <label>${clientUpdateArticleLabel}</label>
            <input id="soloUpdateURL" type="text" value="${currentUser.userB3ClientUpdateArticleURL}" />
            <span style="right:24px;top:186px;"></span><br/>

            <label>${clientCmtLabel}</label>
            <input id="soloCmtURL" type="text" value="${currentUser.userB3ClientAddCommentURL}" /> 
            <span style="right:24px;top:255px;"></span><br/><br/>

            <span id="syncb3Tip" style="right: 95px; top: 305px;"></span>
            <button class="green fn-right" onclick="Settings.update('sync/b3')">${saveLabel}</button>
        </div>
    </div>

    <div class="module">
        <div class="module-header">
            <h2>${passwordLabel}</h2>
        </div>
        <div class="module-panel form fn-clear">
            <label>${oldPasswordLabel}</label>
            <input id="pwdOld" type="password" />
            <span style="right:24px;top:50px;"></span><br/>

            <label>${newPasswordLabel}</label>
            <input id="pwdNew" type="password" />
            <span style="right:24px;top:118px;"></span><br/>

            <label>${confirmPasswordLabel}</label>
            <input id="pwdRepeat" type="password" /> 
            <span style="right:24px;top:187px;"></span><br/><br/>

            <span id="passwordTip" style="right: 95px; top: 237px;"></span>
            <button class="green fn-right" onclick="Settings.update('password')">${saveLabel}</button>
        </div>
    </div>
</div>
</@home>