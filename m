Return-Path: <open-iscsi+bncBC755V5RXMKBB75KZ3UAKGQEZBPS53I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CB156E1B
	for <lists+open-iscsi@lfdr.de>; Wed, 26 Jun 2019 17:55:45 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id h47sf3315856qtc.20
        for <lists+open-iscsi@lfdr.de>; Wed, 26 Jun 2019 08:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OmeBgBL6ex0BDNj87i77ZAwn351QYUKLuA+yUmGdflk=;
        b=U41Vzb0V4t/e2zIT0qSArnZjymuFGERL8P+QStyD1jJ68GrFoNcyL4qWPUJOQy4+J7
         hC2L9XWiCIoiXgahOaVROaihOq+wolHzdv1im1+KcNA2ElyZ9W7n1AOvvtpFF9Ad8jZc
         BbneXLWDcwFx7UXwcdqPuBzbutCZP8MDF2nXN5L81Zc2mqHApu17oElJ+USYCqeErb1V
         XI66X9lzJBQOsTZkk29XeGDfM7kU03knSVrruoCZliUjfb0zDaN4BfGAirZQ7W2rKxnk
         4M7WbErwAj2kriSKIVWa7UoRxCTV78BZ2jB1ORzbAJSOYIUC8ToQ5iRy2Ghn5CekxC+h
         uPhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OmeBgBL6ex0BDNj87i77ZAwn351QYUKLuA+yUmGdflk=;
        b=I3v+TjMuIXTqDxFP3SuAYMT4ZOsJOosihhix5azNz9IRGJHiHP/x3az/KPB+BEgMr9
         XMXZ0V/7t2SWrWJIoIYOUJUq2TJ0KivKM6LWXGZeQOp/8rFkNRf3703CA2CTe3PwgQVT
         3c4biECbCqByR35dwu0IaDrr2SQetTnfAzesGkX21vys2n6jncxocmvbPJgK+LsrRCiN
         uf1Vz11uDgDKGlnBs7WYDyaNvxiOCjly/XUrPKz/2r3K4G+bGEoiekrs8juVFBsvFVjR
         NTBhAUI0U4WclpYx8G8ENLkDbNX/FsgXEn95srkHA2KC5iQBsVMaX0ebxkyImlsd8Wze
         ayEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OmeBgBL6ex0BDNj87i77ZAwn351QYUKLuA+yUmGdflk=;
        b=uSda9NNUul1uMV+rN4adoN99e7yPwa6sGxGAgb7F7MSYL1+nb3vhfgG3vjuSakKYgp
         vn+hlDbwgTNVmXYtg5Us6+5zlAFLfvApf3Y3KGx8GVdxK0H/e+I/hgXZB02Oan47Nxen
         IoXsSI13ns9c/3RzdSPTZS/k5Hc3+8cNtI1v26lbVv/uMxu2fZ34qGmaH3fg6s+K7PPa
         NrggF2VcgSYhIdOm1XoKOcVUK2KYQw2DCaa8w3DnAOTusZCajv8c1P1rBxND3U1zQtVz
         p9Sv+hBngzxveuGLvYKxcWpl7kwiOCjqBJujx1N96eqCopYRa4F825WTb0KuaRbbRkov
         fkzQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVs+lSRUFXF2g0ILUe5Iu1boSygkJdsuX0rXwGi5nd+l72Z/AOq
	9BUuEK5qV2k+K4IZhhnmGFQ=
X-Google-Smtp-Source: APXvYqxvfF5TxCCxnq3lN4DduaBITg4woR0Uv0mpdvuow10znSZQzortBj6+l4kaqDCcFs3rMaSHuQ==
X-Received: by 2002:a05:620a:113b:: with SMTP id p27mr4442690qkk.397.1561564543585;
        Wed, 26 Jun 2019 08:55:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:228c:: with SMTP id f12ls402091qta.9.gmail; Wed, 26 Jun
 2019 08:55:43 -0700 (PDT)
X-Received: by 2002:ac8:376e:: with SMTP id p43mr4452145qtb.354.1561564543189;
        Wed, 26 Jun 2019 08:55:43 -0700 (PDT)
Date: Wed, 26 Jun 2019 08:55:42 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76@googlegroups.com>
In-Reply-To: <37c0b6be-68ec-474e-b95d-e9450bfc4000@googlegroups.com>
References: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
 <2604ac31-fea0-4963-9077-1942c71f8a85@googlegroups.com>
 <37c0b6be-68ec-474e-b95d-e9450bfc4000@googlegroups.com>
Subject: Re: Open-iscsi slow boot
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2910_1359413527.1561564542656"
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

------=_Part_2910_1359413527.1561564542656
Content-Type: multipart/alternative; 
	boundary="----=_Part_2911_474823910.1561564542656"

------=_Part_2911_474823910.1561564542656
Content-Type: text/plain; charset="UTF-8"

On Tuesday, June 25, 2019 at 11:31:03 AM UTC-4, Randy Broman wrote:
>
> Thanks for your response. I'm using Kubuntu 19.04. I disabled the iscsi 
> service and in fact the boot was much faster:
>
>
> I'm not understanding what's going on with your system. I suspect there's 
more than just an unused open-iscsi initiator involved here.

Do you have any iscsi targets set up? Existing sessions?

I downloaded kunbuntu, and open-iscsi.service is enabled by default. Can 
you give me the systemctl status for open-iscsi.service, iscsid.socket, and 
iscsid.service? Also, an "ls" of /etc/iscsi/nodes and 
/sys/class/iscsi_session?

And please don't assume that the numbers that "systemd-analyze blame" show 
-- they don't always mean what you think. Can you just please time the boot 
(or reboot) sequence yourself, using the log files?

On my test VM, I have iscsid.socket, iscsid.service, and open-iscsi.service 
at their default settings, but I have never discovered any targets, so I 
don't have any history of nodes or sessions. And when I run 
"systemd-analyze blame", iscsi does not show up at all.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2911_474823910.1561564542656
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, June 25, 2019 at 11:31:03 AM UTC-4, Randy Brom=
an wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: =
0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">Than=
ks for your response. I&#39;m using=C2=A0Kubuntu 19.04. I disabled the iscs=
i service and in fact the boot was much faster:<div><span style=3D"font-fam=
ily:monospace"><span style=3D"color:rgb(0,0,0)"><br></span></span></div><br=
></div></blockquote><div>I&#39;m not understanding what&#39;s going on with=
 your system. I suspect there&#39;s more than just an unused open-iscsi ini=
tiator involved here.</div><div><br></div><div>Do you have any iscsi target=
s set up? Existing sessions?</div><div><br></div><div>I downloaded kunbuntu=
, and open-iscsi.service is enabled by default. Can you give me the systemc=
tl status for open-iscsi.service, iscsid.socket, and iscsid.service? Also, =
an &quot;ls&quot; of /etc/iscsi/nodes and /sys/class/iscsi_session?</div><d=
iv><br></div><div>And please don&#39;t assume that the numbers that &quot;s=
ystemd-analyze blame&quot; show -- they don&#39;t always mean what you thin=
k. Can you just please time the boot (or reboot) sequence yourself, using t=
he log files?</div><div><br></div><div>On my test VM, I have iscsid.socket,=
 iscsid.service, and open-iscsi.service at their default settings, but I ha=
ve never discovered any targets, so I don&#39;t have any history of nodes o=
r sessions. And when I run &quot;systemd-analyze blame&quot;, iscsi does no=
t show up at all.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:open-iscsi@googlegro=
ups.com">open-iscsi@googlegroups.com</a>.<br />
Visit this group at <a href=3D"https://groups.google.com/group/open-iscsi">=
https://groups.google.com/group/open-iscsi</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/8fe010f4-fc0f-4021-a20e-9d7bdfaf0a76%40googlegroups.com</a>.<b=
r />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2911_474823910.1561564542656--

------=_Part_2910_1359413527.1561564542656--
