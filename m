Return-Path: <open-iscsi+bncBC755V5RXMKBBJFF5T3AKGQEHL3OYWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB4F1F047F
	for <lists+open-iscsi@lfdr.de>; Sat,  6 Jun 2020 05:51:01 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id d190sf9349857qkc.20
        for <lists+open-iscsi@lfdr.de>; Fri, 05 Jun 2020 20:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tCsuqd36k191FWk5KyR/9fHIjvXXceudGxjHdxYeaRw=;
        b=orjzQhlXzxA+4G58QkcPJoTO9mxPQErrU0Xj9bwuEIR1BEqD5VlJNvPFNkM2ry3vSM
         KG//0YK+Jugg++i2d5iteTGVkia0fBkznLFTKm2QoxMOrb0t1FvMl+POgOlIYFA0WmbC
         3O1VSamZcnm12Oy2LW6SXqe3EfRrd2GN8QWbrzgwyjPV/npr+Ck1ZRFgFXQD7ZbVCrJD
         BE8p7KwVJ3TglzTT7IsDeTx2CDg8yi1RWFPtRY4H+n6IQ3m19u3sAOjY8Y8/s+MVf/Yx
         qC5F9wE0adOhYFl3enQF87oFfu+1RpARgWXs5gMU7S6ftkMziq3WsPDVxxeJBTESqFNL
         fQGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tCsuqd36k191FWk5KyR/9fHIjvXXceudGxjHdxYeaRw=;
        b=CTmmWAmwZCatRhgtfYk2V+W+QyLVDEOhY5Wwj+z/iLHyDJPUavAWq25ykxlxOB1tau
         mpcVzghJOgymiYdijqfSnwris5aQihV2DYcrzyYCOMZgEr8jW0PzjiVGSfaaIA7aP9Z7
         5dnEWkN+Yc2l1y1/20wq1n0DAk7Pmv9alKq4TeaU8zlM5ejdLZMXeGWt8aKqN4kqT0Ci
         RQzDi3ruf9CjhAOi6q4PMEYvXdJr6hqxVY9I5szkpj/xXpRXHiGJDX9+jmkYqjYcqul9
         JjDvh72QhCQlAODtCv2GytP0A98w7R9TbCcDtXxbyZ8f+LN+91Z9En7nhY7WBpZiKNkr
         0QAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tCsuqd36k191FWk5KyR/9fHIjvXXceudGxjHdxYeaRw=;
        b=ZXCufGrqNo0J7nnfpLcePGVTDxbB5Ff+gi2xMOMKDq8+j6s24cVMXz0L/XRk9Yeono
         e9UOXlszamSzFL6eOd9ZeWvp54pkR4WjzGuyGz7YBXqAP9bRdD1eBvI1fvmbpcvwCZ4R
         uxcdVjEOwdwZN/DD2aqAggqJrbrtwSh3KuHzIu9QQPyKz03wQCRuUUE1X/BsWOtrIRxc
         6OqydwVCxq6XPZPgIqsyqJr1umSQ67vVndArfRrXfukgmE1nqr/Zd21YzXnKK9QTzfB5
         QofE8QeiitVQyz8GJLfXVa2jCba8kj+F4jwDtThOKGdXsp2osFHB/feKQYN2a1RTj6mB
         Vx6Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530jBOJKzpHIaagdZ4yMuKLH/cGrvnx1CFAAN04YqdZ+tP+rDOWg
	5u0L4F7I5nYzb2I8C3uQ9DM=
X-Google-Smtp-Source: ABdhPJyw2vor/zaZkn8X1kS/DnQy2ZnK3zCkzOUt8ncqsE/3mhKsoUaR6RONs2HUSBq04q5k7eYE8w==
X-Received: by 2002:a0c:aec5:: with SMTP id n5mr13079229qvd.0.1591415460602;
        Fri, 05 Jun 2020 20:51:00 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:ec0d:: with SMTP id y13ls2694642qvo.8.gmail; Fri, 05 Jun
 2020 20:51:00 -0700 (PDT)
X-Received: by 2002:ad4:56b2:: with SMTP id bd18mr12447270qvb.209.1591415460171;
        Fri, 05 Jun 2020 20:51:00 -0700 (PDT)
Date: Fri, 5 Jun 2020 20:50:59 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a167b02a-53af-48ce-907a-5e43c67dd086o@googlegroups.com>
In-Reply-To: <1591273415-689835-1-git-send-email-wubo40@huawei.com>
References: <1591273415-689835-1-git-send-email-wubo40@huawei.com>
Subject: Re: [PATCH] iscsi: Add break to while loop
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_713_82130627.1591415459709"
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

------=_Part_713_82130627.1591415459709
Content-Type: multipart/alternative; 
	boundary="----=_Part_714_864382083.1591415459709"

------=_Part_714_864382083.1591415459709
Content-Type: text/plain; charset="UTF-8"

On Thursday, June 4, 2020 at 5:10:49 AM UTC-7, Wu Bo wrote:
>
> From: liubo <liubo254@huawei.com> 
>
> Fix the potential risk of rc value being washed out by jumping out of the 
> loop 
>
> Signed-off-by: liubo <liubo254@huawei.com> 
> Reported-by: Zhiqiang Liu <liuzhiqiang26@huawei.com> 
> --- 
>  utils/fwparam_ibft/fwparam_sysfs.c | 5 ++++- 
>  1 file changed, 4 insertions(+), 1 deletion(-) 
>
> diff --git a/utils/fwparam_ibft/fwparam_sysfs.c 
> b/utils/fwparam_ibft/fwparam_sysfs.c 
> index a0cd1c7..87fd6d4 100644 
> --- a/utils/fwparam_ibft/fwparam_sysfs.c 
> +++ b/utils/fwparam_ibft/fwparam_sysfs.c 
> @@ -115,8 +115,11 @@ static int get_iface_from_device(char *id, struct 
> boot_context *context) 
>                                  break; 
>                          } 
>   
> -                        if (sscanf(dent->d_name, "net:%s", 
> context->iface) != 1) 
> +                        if (sscanf(dent->d_name, "net:%s", 
> context->iface) != 1) { 
>                                  rc = EINVAL; 
> +                                break; 
> +                        } 
> + 
>                          rc = 0; 
>                          break; 
>                  } else { 
> -- 
> 2.21.0.windows.1 
>
>
This looks fine to me. Any chance you could submit a pull request on 
GitHub? It saves me having to cut-and-paste, since I sadly do not have a 
good workflow setup for patches from the mailing list. 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a167b02a-53af-48ce-907a-5e43c67dd086o%40googlegroups.com.

------=_Part_714_864382083.1591415459709
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thursday, June 4, 2020 at 5:10:49 AM UTC-7, Wu Bo wrote=
:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;">From: liubo &lt;<a href=3D"ma=
ilto:liubo254@huawei.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D=
"this.href=3D&#39;mailto:liubo254@huawei.com&#39;;return true;" onclick=3D"=
this.href=3D&#39;mailto:liubo254@huawei.com&#39;;return true;">liubo254@hua=
wei.com</a>&gt;
<br>
<br>Fix the potential risk of rc value being washed out by jumping out of t=
he loop
<br>
<br>Signed-off-by: liubo &lt;<a href=3D"mailto:liubo254@huawei.com" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:liubo25=
4@huawei.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:liubo254=
@huawei.com&#39;;return true;">liubo254@huawei.com</a>&gt;
<br>Reported-by: Zhiqiang Liu &lt;<a href=3D"mailto:liuzhiqiang26@huawei.co=
m" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailt=
o:liuzhiqiang26@huawei.com&#39;;return true;" onclick=3D"this.href=3D&#39;m=
ailto:liuzhiqiang26@huawei.com&#39;;return true;">liuzhiqiang26@huawei.com<=
/a>&gt;
<br>---
<br>=C2=A0utils/fwparam_ibft/fwparam_<wbr>sysfs.c | 5 ++++-
<br>=C2=A01 file changed, 4 insertions(+), 1 deletion(-)
<br>
<br>diff --git a/utils/fwparam_ibft/fwparam_<wbr>sysfs.c b/utils/fwparam_ib=
ft/fwparam_<wbr>sysfs.c
<br>index a0cd1c7..87fd6d4 100644
<br>--- a/utils/fwparam_ibft/fwparam_<wbr>sysfs.c
<br>+++ b/utils/fwparam_ibft/fwparam_<wbr>sysfs.c
<br>@@ -115,8 +115,11 @@ static int get_iface_from_device(char *id, struct =
boot_context *context)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0}
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
if (sscanf(dent-&gt;d_name, &quot;net:%s&quot;, context-&gt;iface) !=3D 1)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
if (sscanf(dent-&gt;d_name, &quot;net:%s&quot;, context-&gt;iface) !=3D 1) =
{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0rc =3D EINVAL;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
}
<br>+
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0rc =3D 0;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>--=20
<br>2.21.0.windows.1
<br>
<br></blockquote><div><br></div><div>This looks fine to me. Any chance you =
could submit a pull request on GitHub? It saves me having to cut-and-paste,=
 since I sadly do not have a good workflow setup for patches from the maili=
ng list. <br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a167b02a-53af-48ce-907a-5e43c67dd086o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/a167b02a-53af-48ce-907a-5e43c67dd086o%40googlegroups.com</a>.=
<br />

------=_Part_714_864382083.1591415459709--

------=_Part_713_82130627.1591415459709--
