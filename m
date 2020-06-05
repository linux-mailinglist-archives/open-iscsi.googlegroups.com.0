Return-Path: <open-iscsi+bncBC755V5RXMKBBLUA5P3AKGQE7WPJRII@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6855E1F02AD
	for <lists+open-iscsi@lfdr.de>; Fri,  5 Jun 2020 23:59:11 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id z7sf8682006qve.0
        for <lists+open-iscsi@lfdr.de>; Fri, 05 Jun 2020 14:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GLPRhdcCfnbXnLKLMUrtPvPxnC2MQhAdn2Dm22g42h0=;
        b=dVWUql31H+gGP9rMVbRhtEv2JTq6Tdc977AUgCMJjjrtu2TpJS+/2tEpCd07ooh3RT
         B4XxPJ+icC/PWwem7Ln+heFNdjY56OoeYJ7gJLMOcTAHrdl8vcs1WNXV9TyDcb8Xk4jC
         XVuKvGHDAhsyDZAOGNzAIRuzy/TbJM6q6Z1Up8mwZdL10Q22MhUK22lyp3ImKEVNYfhz
         xeJR4xERbDnpgm4+7L8iPZNkfxObPHFBryJ28sI/n5hv8IJ76fgudzS0O/XFPm79pLs+
         QLLXOyNu7QJXkWYDHkSnQbkE4IGZa3u0mokj6ckgFCY6DyvKnj/kPYLAVmRihPz7bVuS
         HC9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GLPRhdcCfnbXnLKLMUrtPvPxnC2MQhAdn2Dm22g42h0=;
        b=lGqkMZNvhpRab19KEROtQf+qQ2GHekVtKUrbTH9FDB/EXfM5PHQy8lRm5yWcnL11yf
         rcKqwPZc3V0TOShSPdjWKKy7MvtkVC1LEDI2Uej173yN/aXU440l0IDseaNAfDMdEfKO
         gL6BhK0STcBqGRnc+wlXELs0D7nX9iwWkX6KHmg1bCQWcHiKLjB0NUKpJwj+kWi5AJqD
         KTvaAva0c80ma6GWHjj8JPvxmBcyIW6nQu1aT2wLqE5vtHfmXdApKDWhQZzjL8ETDH8Q
         4P1SEerkAmNUT+/u02TFQYtFYc2Ep+aapB9MiPWWtZDU8z6heKyYBhxTsAVPMtNMs3EZ
         hPzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GLPRhdcCfnbXnLKLMUrtPvPxnC2MQhAdn2Dm22g42h0=;
        b=YkNgCjsMYcvIASdSPscN4Xl3FYcwL2Pkf/ZzQ0WhgPQ10PalbRqgigmamsqMvyqI0J
         Hf8z6P1XprfFkW4NUBJzEVFAKcnXq1EKdaPVPsJeWse+InGemhD13JZCn3zWLdoMjacc
         pEd6JXwO8RdJiEzPqcz9gwvg0/STgWr8j7Nggxo0Upiq37pCTQGYwnwBylhU6HEK4cGz
         TiXna3YrPBIoIrO/CqyMIycPWTlLSrwmiOp+OPQfQ+e46JspmYpwDSvrhxUeJ9prGv91
         /kXQQEvCX7Vuo0mDyorIhgD/j17PlYYRymFJrp5gZ/OIAEaxbjrpDKZz7ocUzUo870oU
         JB+g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530+n0IEfAdVF4ZlujjznLn3xqf5wM/VcbQl6JaYe5E0GV2LmC+n
	4eM2KhOaMbfCHuN0TP9PgEk=
X-Google-Smtp-Source: ABdhPJx0tCmGdKSB+AgV7slNLNkxlFb9OVWR/m6CMhaw9HE29EhZL45VPd9qwCp80FYZ7Be76ojymg==
X-Received: by 2002:a37:7143:: with SMTP id m64mr11265617qkc.27.1591394350236;
        Fri, 05 Jun 2020 14:59:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:cd07:: with SMTP id b7ls2536446qvm.10.gmail; Fri, 05 Jun
 2020 14:59:09 -0700 (PDT)
X-Received: by 2002:ad4:55d0:: with SMTP id bt16mr11559322qvb.76.1591394349622;
        Fri, 05 Jun 2020 14:59:09 -0700 (PDT)
Date: Fri, 5 Jun 2020 14:59:08 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <6b348ceb-6f19-4f11-858d-c710a0872a72o@googlegroups.com>
Subject: RFC: what to do about the open-iscsi GPL license vs. the open-ssl
 BSD license?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_581_1746190184.1591394348967"
X-Original-Sender: leeman.duncan@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_581_1746190184.1591394348967
Content-Type: multipart/alternative; 
	boundary="----=_Part_582_1716716398.1591394348967"

------=_Part_582_1716716398.1591394348967
Content-Type: text/plain; charset="UTF-8"

Hi All:

I believe there is a conflict between the current open-iscsi license and 
the open-ssl license, noticed recently when Chris Leech updated open-iscsi 
to use newer encryption algorithms.

You can see more about this on github, where it was brought up as an issue 
<github, where it was brought up as an issue: 
https://github.com/open-iscsi/open-iscsi/issues/208>

It seems like there are several options, in order of progressively more 
work:

   1. ignore this problem
   2. add a disclaimer to our license
   3. Revert the update Chris did
   4. re-write open-iscsi encryption code to use a different package

It seems some other packages handle this case by simply ifdefing out the 
"offending" code. Of course others are welcome add a define to include that 
code, but by default this "fixes" the license issue. I do not like this 
approach, as many open-iscsi users care about authentication, and removing 
it would cripple open-iscsi IMHO.

Ignoring the problem won't fix anything, and I vote against reverting the 
changes Chris put in, as well as rewriting the code, as I'm no encryption 
expert and have no desire to become one. I would certainly be willing to 
entertain a patch series that did that, if any enterprising user wanted to 
do that work.

That leaves us with the disclaimer. I believe this will be good enough, as 
it has worked with other similar situations. And although I'm certainly not 
a lawyer, I so far have not seen anyone that worries about the open-iscsi 
license, with the exception of one distribution that runs nit-picking 
license checkers, just for fun. :)

So this is the official request for comment. Anyone?

-- 
The Lee-man

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6b348ceb-6f19-4f11-858d-c710a0872a72o%40googlegroups.com.

------=_Part_582_1716716398.1591394348967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All:</div><div><br></div><div>I believe there is a=
 conflict between the current open-iscsi license and the open-ssl license, =
noticed recently when Chris Leech updated open-iscsi to use newer encryptio=
n algorithms.</div><div><br></div><div>You can see more about this on <a hr=
ef=3D"github, where it was brought up as an issue: https://github.com/open-=
iscsi/open-iscsi/issues/208">github, where it was brought up as an issue</a=
><br></div><div><br></div><div>It seems like there are several options, in =
order of progressively more work:<br></div><div><ol><li>ignore this problem=
</li><li>add a disclaimer to our license</li><li>Revert the update Chris di=
d<br></li><li>re-write open-iscsi encryption code to use a different packag=
e</li></ol><div>It seems some other packages handle this case by simply ifd=
efing out the &quot;offending&quot; code. Of course others are welcome add =
a define to include that code, but by default this &quot;fixes&quot; the li=
cense issue. I do not like this approach, as many open-iscsi users care abo=
ut authentication, and removing it would cripple open-iscsi IMHO.</div><div=
><br></div><div>Ignoring the problem won&#39;t fix anything, and I vote aga=
inst reverting the changes Chris put in, as well as rewriting the code, as =
I&#39;m no encryption expert and have no desire to become one. I would cert=
ainly be willing to entertain a patch series that did that, if any enterpri=
sing user wanted to do that work.</div><div><br></div><div>That leaves us w=
ith the disclaimer. I believe this will be good enough, as it has worked wi=
th other similar situations. And although I&#39;m certainly not a lawyer, I=
 so far have not seen anyone that worries about the open-iscsi license, wit=
h the exception of one distribution that runs nit-picking license checkers,=
 just for fun. :)</div><div><br></div><div>So this is the official request =
for comment. Anyone?</div><div><br></div><div>-- <br></div><div>The Lee-man=
</div><div><br></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/6b348ceb-6f19-4f11-858d-c710a0872a72o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/6b348ceb-6f19-4f11-858d-c710a0872a72o%40googlegroups.com</a>.=
<br />

------=_Part_582_1716716398.1591394348967--

------=_Part_581_1746190184.1591394348967--
