Return-Path: <open-iscsi+bncBC755V5RXMKBBJ563T6AKGQEWAP4ODA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C288299671
	for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 20:10:33 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id e142sf6094935oob.2
        for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 12:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ps3rFUSoBe8tiKPhNg8oZY+YcJxospiOx0KXwGm8LKU=;
        b=erYC4NoT9cQnVwrNWpK8AwBdlSSQjnzNrr7OyTPUpbDCf3bzSupUAL1VLo860Ar4b3
         gnmIJOnkZUTg+Ln3zlyoBp268eIWViM8vl/r0UQrpsbmNZNW2a3gmWyKjcJMI4MnGmJE
         t4JGOC/DpeiBZ1D2JMPiJ3amhWkm98p+Pn8XkC4tN1zGNR0U5iRSmx8HZ84yxSGYjhDf
         mzaDhRFgZjzq2On3DqdmL9/YeI8qkDT100/g3Mju2WhSAMKc157WQMPThWn38eaW5coR
         W1EsR8XT1VarR28NF49PpbGAiCiv5PK558RDRCavWbsmhySMOiJgySyHt9bUW8HQMxsh
         N0lA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ps3rFUSoBe8tiKPhNg8oZY+YcJxospiOx0KXwGm8LKU=;
        b=VjYhiZTfeZL7nG76nsJ6hrNJupGSoru5U5XLqP4qbYYPVyMM02RKs+1Bei39QL69p0
         oKJACuW+xJwKBApZUwtFs6qiVWTzmo1A45BidwoxMrUvkkMqI1Zdq1MlaeEzNO5frinm
         EZIv52X5W9g2xa86YDYAXY319c1ZOHRDAhwh9xdrOs8JQ4g+oQBSQ3Vrbctr+ayIs8pN
         rbNLkBrnn4/jNsjWlkAXqcmK0XzEwq/kIy/lgOekt8Y9s2d+1+j+7mdsixLAe2nr12AW
         gayhLynFW2phDlPE/dDntTNWARAdocfKqFZioDZ2secf2Hz84GeOOvdzXHkh3UHnZlXu
         I+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ps3rFUSoBe8tiKPhNg8oZY+YcJxospiOx0KXwGm8LKU=;
        b=YLkac82SUeNQvmok00WsX0VWJKMNIl9PAuqGMegO8qb6rYXLrGyqQ6EV4M9qwX3zRD
         n/adn9Ji0w8XEzWT4c3N59eEQHe7TKQvu3q//XoK1y4aBV1sLi2fZKFdvVN4bxvI9ANy
         aJBmlOpkqQX2YCvOz7ukYPmtzhOdkmnNWbGqhNdCWAqJb7sIEqI7ohWIzSCe9qafAQS/
         P5eUYGeTOtlSEezC1bXvWBl+/gTVAhcYx49d3ga4qCjBO4OPwxalOaNgIihicjg/uZb0
         4T61F3Evz3YEPmg6nzkZ9/Gf+8q3/Gc4rkqsAj6aak5Fvul6mp+ROcvEFZRYu86vNVmY
         LK9A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533tTA5Y+WZkbtu2ipP5AEBO/ofSt+VHPseRwVriYN8OsYem4qY4
	aAcpkfTwtC8QlJvPjK7POH4=
X-Google-Smtp-Source: ABdhPJzfTv4gXiE6RfOHUAiihjzt3kG47mEUdvrJKT02a+lo08jPtLteQOXgLKufHKNdNUmdHz3+MQ==
X-Received: by 2002:a4a:b78f:: with SMTP id a15mr14905772oop.33.1603739432072;
        Mon, 26 Oct 2020 12:10:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:4713:: with SMTP id u19ls2421475oia.0.gmail; Mon, 26 Oct
 2020 12:10:31 -0700 (PDT)
X-Received: by 2002:aca:4a85:: with SMTP id x127mr12287051oia.138.1603739431480;
        Mon, 26 Oct 2020 12:10:31 -0700 (PDT)
Date: Mon, 26 Oct 2020 12:10:30 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <825ccece-a2a6-411d-bdd2-591b5e9d045dn@googlegroups.com>
In-Reply-To: <20201020105722.8938-1-ailiop@suse.com>
References: <20201020105722.8938-1-ailiop@suse.com>
Subject: Re: [PATCH] iscsid: drop uid privileges after locking memory
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_14_1214211804.1603739430468"
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

------=_Part_14_1214211804.1603739430468
Content-Type: multipart/alternative; 
	boundary="----=_Part_15_1580188856.1603739430468"

------=_Part_15_1580188856.1603739430468
Content-Type: text/plain; charset="UTF-8"

Hi Anythony:

On Thursday, October 22, 2020 at 12:33:08 PM UTC-7 Anthony Iliopoulos wrote:

> Move the setuid call after mlockall, since the latter requires elevated 
> privileges, and will cause iscsid startup to fail when an unprivileged 
> uid is specified. 
>

I appreciate your patch, but I'm not sure this one has any value.

When I run regular iscsid (not patched), it dies almost at the start of 
main(), in the mgmt_ipc_listen() call, if I'm not root. So it never even 
gets to your patch.

Was there an actual bug or problem you were trying to fix?

P.S. This patch was mangled. Please submit patches in text only, or better 
yet as a github pull request, since I don't have time to edit submitted 
patches. Thanks!

>
> Signed-off-by: Anthony Iliopoulos <ail...@suse.com> 
> --- 
> usr/iscsid.c | 12 ++++++------ 
> 1 file changed, 6 insertions(+), 6 deletions(-) 
>
> diff --git a/usr/iscsid.c b/usr/iscsid.c 
> index e50149823bee..9f1a09fe28f2 100644 
> --- a/usr/iscsid.c 
> +++ b/usr/iscsid.c 
> @@ -525,12 +525,6 @@ int main(int argc, char *argv[]) 
> } 
> } 
>
> - if (uid && setuid(uid) < 0) { 
> - log_error("Unable to setuid to %d", uid); 
> - log_close(log_pid); 
> - exit(ISCSI_ERR); 
> - } 
> - 
> memset(&daemon_config, 0, sizeof (daemon_config)); 
> daemon_config.pid_file = pid_file; 
> daemon_config.config_file = config_file; 
> @@ -601,6 +595,12 @@ int main(int argc, char *argv[]) 
> exit(ISCSI_ERR); 
> } 
>
> + if (uid && setuid(uid) < 0) { 
> + log_error("Unable to setuid to %d", uid); 
> + log_close(log_pid); 
> + exit(ISCSI_ERR); 
> + } 
> + 
> set_state_to_ready(); 
> event_loop(ipc, control_fd, mgmt_ipc_fd); 
>
> -- 
> 2.29.0 
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/825ccece-a2a6-411d-bdd2-591b5e9d045dn%40googlegroups.com.

------=_Part_15_1580188856.1603739430468
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anythony:<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"g=
mail_attr">On Thursday, October 22, 2020 at 12:33:08 PM UTC-7 Anthony Iliop=
oulos wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 =
0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">M=
ove the setuid call after mlockall, since the latter requires elevated
<br>privileges, and will cause iscsid startup to fail when an unprivileged
<br>uid is specified.
<br></blockquote><div><br></div><div>I appreciate your patch, but I'm not s=
ure this one has any value.</div><div><br></div><div>When I run regular isc=
sid (not patched), it dies almost at the start of main(), in the mgmt_ipc_l=
isten() call, if I'm not root. So it never even gets to your patch.</div><d=
iv><br></div><div>Was there an actual bug or problem you were trying to fix=
?</div><div><br></div><div>P.S. This patch was mangled. Please submit patch=
es in text only, or better yet as a github pull request, since I don't have=
 time to edit submitted patches. Thanks!<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204,=
 204); padding-left: 1ex;">
<br>Signed-off-by: Anthony Iliopoulos &lt;<a href=3D"" data-email-masked=3D=
"" rel=3D"nofollow">ail...@suse.com</a>&gt;
<br>---
<br> usr/iscsid.c | 12 ++++++------
<br> 1 file changed, 6 insertions(+), 6 deletions(-)
<br>
<br>diff --git a/usr/iscsid.c b/usr/iscsid.c
<br>index e50149823bee..9f1a09fe28f2 100644
<br>--- a/usr/iscsid.c
<br>+++ b/usr/iscsid.c
<br>@@ -525,12 +525,6 @@ int main(int argc, char *argv[])
<br> 		}
<br> 	}
<br>=20
<br>-	if (uid &amp;&amp; setuid(uid) &lt; 0) {
<br>-		log_error("Unable to setuid to %d", uid);
<br>-		log_close(log_pid);
<br>-		exit(ISCSI_ERR);
<br>-	}
<br>-
<br> 	memset(&amp;daemon_config, 0, sizeof (daemon_config));
<br> 	daemon_config.pid_file =3D pid_file;
<br> 	daemon_config.config_file =3D config_file;
<br>@@ -601,6 +595,12 @@ int main(int argc, char *argv[])
<br> 		exit(ISCSI_ERR);
<br> 	}
<br>=20
<br>+	if (uid &amp;&amp; setuid(uid) &lt; 0) {
<br>+		log_error("Unable to setuid to %d", uid);
<br>+		log_close(log_pid);
<br>+		exit(ISCSI_ERR);
<br>+	}
<br>+
<br> 	set_state_to_ready();
<br> 	event_loop(ipc, control_fd, mgmt_ipc_fd);
<br>=20
<br>--=20
<br>2.29.0
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/825ccece-a2a6-411d-bdd2-591b5e9d045dn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/825ccece-a2a6-411d-bdd2-591b5e9d045dn%40googlegroups.com</a>.=
<br />

------=_Part_15_1580188856.1603739430468--

------=_Part_14_1214211804.1603739430468--
