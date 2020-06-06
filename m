Return-Path: <open-iscsi+bncBC755V5RXMKBBQ5E5T3AKGQEFBPMVSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4481F047A
	for <lists+open-iscsi@lfdr.de>; Sat,  6 Jun 2020 05:49:24 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id u26sf10335831qtj.21
        for <lists+open-iscsi@lfdr.de>; Fri, 05 Jun 2020 20:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ky2S68uGQJuc1mx0bygfGHV4NqJT0EP4ur2cJjmz0vU=;
        b=V+ussOpne5Xm6z1a+WW4DKINirq45EErpM/1xzEcAf9sb4aBnwpTZjFhFmtMvj3Pzc
         3WMioE+HIIAp9KX5f2brpuBAeNe9IOu9OschFJFgcAFpMQqeuwMijO72fB+Vq2M6xNdh
         J6rd3aBvcDRRVb+ywkwVUe2decqc9ws0Ar8jFLTVMMvqiC4/1epYOE88b6vNZV0PQeUH
         Yii5L80o+DeHA8SB6ZFq5CPnVno27JeFhFAVJHMtyBFcZdL7Mm4YlPrGGlBxaDJ5wgrQ
         8HLWkm+koibFyNmeI1lzKTEe0748kBx3B472FH+cef+fo9tiJ+GDtkMEkc0FFVjmjYT2
         jKpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ky2S68uGQJuc1mx0bygfGHV4NqJT0EP4ur2cJjmz0vU=;
        b=PG1081abdaq/thKFO5KE8eftlG2hbq3R6M0RDvBT2jODUJxVcAApooP11vgtvEtEH4
         eEcODqwyqRq3Zdh030KzvA5RVXH4Ht3rKZ835LcaBqJ8g/fYfR4rzi6j0W5iW4KTvHwd
         EFtxQuBgn2fZhqgXoSDmYrf15mJKcHexrFDv1LrkPO03Zoxu6wmGqqyn24eV9y/h/wjv
         FdowMrpwjzoc+2gl5T8Ez8C/Dxi826P2iqFyM6fFfc1XdcrJKOWu1cJSZEzl+js2kaIt
         Ae2w3jcZ9CwlL/2AgNsk/aYxj1LCRZeQt1hWWMvuBFM7ZRrwVpLI+NqFpJfVPunndJ84
         f7+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ky2S68uGQJuc1mx0bygfGHV4NqJT0EP4ur2cJjmz0vU=;
        b=bgbaTlg7e3wqVx7npGGtX1nq9QtJjyaKsjK1gNLpTHomueqgURvYYk/CNFeDpxeSKW
         60Q8S1lk/pnLGTtepDZxAzMsD3da6ve4MwajHwWZvUaHQmSC5HktH4jpajwFJCQvGkTt
         ajwNf+nIeLEtsljXln7OXfPh/vqS0YrGHBnLUFrU/itWb5Bo/SUwkD5yD2xI3YogzhIH
         XwKgY68kqNS0dI7DyTIlpu3abJLyTn3TZmQ02eHf0XIyNMs6nO7OL5Hv2C8iUH1CcD1I
         /LIkXM8pBUfHR6TfwksCR9LFzyh0Zc0Pfq0oBKlSjeIKTxiMbNMjiok6jygm6UNWIUPS
         C7TA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532IPiOCDGK+KZDmRvwJ487diHcNEW7e8FKL6TnFzwkokovGw2i9
	Wnw2gX+YUqLcGNIel2X/Fr8=
X-Google-Smtp-Source: ABdhPJx/2qI2ost8mtXW2ft4+XTX/9RiNxjXye1D7b0xNexAlA3Gld+nd17qjUWPoSU7w5OVCnYhZQ==
X-Received: by 2002:ac8:24e8:: with SMTP id t37mr13519283qtt.319.1591415363715;
        Fri, 05 Jun 2020 20:49:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:9e92:: with SMTP id h140ls5398793qke.5.gmail; Fri, 05
 Jun 2020 20:49:23 -0700 (PDT)
X-Received: by 2002:a37:784:: with SMTP id 126mr12509119qkh.200.1591415363154;
        Fri, 05 Jun 2020 20:49:23 -0700 (PDT)
Date: Fri, 5 Jun 2020 20:49:22 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <3c3b346e-1d17-4e7a-ad38-5ef355146a45o@googlegroups.com>
In-Reply-To: <5ED9087A020000A100039500@gwsmtp.uni-regensburg.de>
References: <7784_1591272646_5ED8E4C6_7784_490_1_1591273415-689835-1-git-send-email-wubo40@huawei.com>
 <5ED9087A020000A100039500@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] [PATCH] iscsi: Add break to while loop
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_709_2146017251.1591415362318"
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

------=_Part_709_2146017251.1591415362318
Content-Type: multipart/alternative; 
	boundary="----=_Part_710_1278406814.1591415362318"

------=_Part_710_1278406814.1591415362318
Content-Type: text/plain; charset="UTF-8"

On Thursday, June 4, 2020 at 7:43:13 AM UTC-7, Uli wrote:
>
> >>> Wu Bo <wubo40@huawei.com> schrieb am 04.06.2020 um 14:23 in Nachricht 
> <7784_1591272646_5ED8E4C6_7784_490_1_1591273415-689835-1-git-send-email-wubo40@h 
>
> awei.com>: 
> > From: liubo <liubo254@huawei.com> 
> > 
> > Fix the potential risk of rc value being washed out by jumping out of 
> the 
> > loop 
> > 
> > Signed-off-by: liubo <liubo254@huawei.com> 
> > Reported-by: Zhiqiang Liu <liuzhiqiang26@huawei.com> 
> > --- 
> >  utils/fwparam_ibft/fwparam_sysfs.c | 5 ++++- 
> >  1 file changed, 4 insertions(+), 1 deletion(-) 
> > 
> > diff --git a/utils/fwparam_ibft/fwparam_sysfs.c 
> > b/utils/fwparam_ibft/fwparam_sysfs.c 
> > index a0cd1c7..87fd6d4 100644 
> > --- a/utils/fwparam_ibft/fwparam_sysfs.c 
> > +++ b/utils/fwparam_ibft/fwparam_sysfs.c 
> > @@ -115,8 +115,11 @@ static int get_iface_from_device(char *id, struct 
> > boot_context *context) 
> >                                  break; 
> >                          } 
> >   
> > -                        if (sscanf(dent->d_name, "net:%s", 
> context->iface) != 1) 
> > +                        if (sscanf(dent->d_name, "net:%s", 
> context->iface) != 1) { 
> >                                  rc = EINVAL; 
> > +                                break; 
> > +                        } 
> > + 
> >                          rc = 0; 
> >                          break; 
> >                  } else { 
> > -- 
> > 2.21.0.windows.1 
>
> It seems to me the whole code could be more readable if the rc were preset 
> either to "success" (0) or "error" (something else), and if the "other" 
> result is needed just set the desired rc. Those multiple "break"s make the 
> code hard to read. 
>
>
>
Agreed that the code could be easier to read, but (1) it's working now, and 
(2) the suggested fix is inline with the current code style and format.

So I'm inclined to accept the patch. But I would also strongly consider a 
rewrite that makes it more readable, if you submitted such a patch.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3c3b346e-1d17-4e7a-ad38-5ef355146a45o%40googlegroups.com.

------=_Part_710_1278406814.1591415362318
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thursday, June 4, 2020 at 7:43:13 AM UTC-7, Uli wrote:<=
blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bord=
er-left: 1px #ccc solid;padding-left: 1ex;">&gt;&gt;&gt; Wu Bo &lt;<a href=
=3D"mailto:wubo40@huawei.com" target=3D"_blank" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;mailto:wubo40@huawei.com&#39;;return true;" onclick=
=3D"this.href=3D&#39;mailto:wubo40@huawei.com&#39;;return true;">wubo40@hua=
wei.com</a>&gt; schrieb am 04.06.2020 um 14:23 in Nachricht
<br>&lt;7784_1591272646_5ED8E4C6_<wbr>7784_490_1_1591273415-689835-<wbr>1-g=
it-send-email-wubo40@h
<br><a href=3D"http://awei.com" target=3D"_blank" rel=3D"nofollow" onmoused=
own=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fawei.co=
m\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEL5og9j69ZQZX4FH82R3jSSeNp3w&#39;=
;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dh=
ttp%3A%2F%2Fawei.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEL5og9j69ZQZX4=
FH82R3jSSeNp3w&#39;;return true;">awei.com</a>&gt;:
<br>&gt; From: liubo &lt;<a href=3D"mailto:liubo254@huawei.com" target=3D"_=
blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:liubo254@hua=
wei.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:liubo254@huaw=
ei.com&#39;;return true;">liubo254@huawei.com</a>&gt;
<br>&gt;=20
<br>&gt; Fix the potential risk of rc value being washed out by jumping out=
 of the=20
<br>&gt; loop
<br>&gt;=20
<br>&gt; Signed-off-by: liubo &lt;<a href=3D"mailto:liubo254@huawei.com" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:liu=
bo254@huawei.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:liub=
o254@huawei.com&#39;;return true;">liubo254@huawei.com</a>&gt;
<br>&gt; Reported-by: Zhiqiang Liu &lt;<a href=3D"mailto:liuzhiqiang26@huaw=
ei.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;=
mailto:liuzhiqiang26@huawei.com&#39;;return true;" onclick=3D"this.href=3D&=
#39;mailto:liuzhiqiang26@huawei.com&#39;;return true;">liuzhiqiang26@huawei=
.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0utils/fwparam_ibft/fwparam_<wbr>sysfs.c | 5 ++++-
<br>&gt; =C2=A01 file changed, 4 insertions(+), 1 deletion(-)
<br>&gt;=20
<br>&gt; diff --git a/utils/fwparam_ibft/fwparam_<wbr>sysfs.c=20
<br>&gt; b/utils/fwparam_ibft/fwparam_<wbr>sysfs.c
<br>&gt; index a0cd1c7..87fd6d4 100644
<br>&gt; --- a/utils/fwparam_ibft/fwparam_<wbr>sysfs.c
<br>&gt; +++ b/utils/fwparam_ibft/fwparam_<wbr>sysfs.c
<br>&gt; @@ -115,8 +115,11 @@ static int get_iface_from_device(char *id, st=
ruct=20
<br>&gt; boot_context *context)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (sscanf(dent-&gt;d_name, &quot;net:%s&quot;, context-&gt;iface) !=
=3D 1)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (sscanf(dent-&gt;d_name, &quot;net:%s&quot;, context-&gt;iface) !=
=3D 1) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0rc =3D EINVAL=
;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0}
<br>&gt; +
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0rc =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; --=20
<br>&gt; 2.21.0.windows.1
<br>
<br>It seems to me the whole code could be more readable if the rc were pre=
set either to &quot;success&quot; (0) or &quot;error&quot; (something else)=
, and if the &quot;other&quot; result is needed just set the desired rc. Th=
ose multiple &quot;break&quot;s make the code hard to read.
<br>
<br>
<br></blockquote><div><br></div><div>Agreed that the code could be easier t=
o read, but (1) it&#39;s working now, and (2) the suggested fix is inline w=
ith the current code style and format.</div><div><br></div><div>So I&#39;m =
inclined to accept the patch. But I would also strongly consider a rewrite =
that makes it more readable, if you submitted such a patch.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/3c3b346e-1d17-4e7a-ad38-5ef355146a45o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/3c3b346e-1d17-4e7a-ad38-5ef355146a45o%40googlegroups.com</a>.=
<br />

------=_Part_710_1278406814.1591415362318--

------=_Part_709_2146017251.1591415362318--
