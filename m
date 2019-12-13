Return-Path: <open-iscsi+bncBC755V5RXMKBBG56Z7XQKGQEQPNMZAA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5D811EAC3
	for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 19:57:33 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id c8sf2425075qte.22
        for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 10:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=S5EvS7bVj33sjGuHzqC1ae+coFr+i3fdsVI8qqQeNRw=;
        b=EsTVf30yYIxO47vu9VhwLN1ujkkQ9UKccDV36dQEVwQaBVOlCSjd2NaFyLLYggxqD+
         7Jl9H84Ytf8q/FKO11PzOFmRLUYY+tyUGkIUATc3V/xgXuRug3tgvPs04Ricuw2Hcq5x
         23jVwqmdCS2f6gM4wbhaBBuNmS5DaMvMW4Kxa37dSEPcRv+IIGdIi3SFMdgF24L/bfd1
         EbOH2KM1dkLjh1HKCPPh2UXYNALUX3ZuvSZM32tnuapHtp2jGJhTBCNoEgLY1/aBd4S5
         idm12imwzD9PG4LQjhiN9InTo2pIw+xTYYjBeuNPzrELA21KgZdDvJL2qXu3K47xsPQt
         0ong==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S5EvS7bVj33sjGuHzqC1ae+coFr+i3fdsVI8qqQeNRw=;
        b=skQeRuncIsqocJ+Qlqww2zjxstQYvFhC3Gi26KY2BvtzPG0cNdbz4RJSsm/oHltV/N
         TNPSepJm9u5UEpAFIffrMmUuDrOH+K7CU3tfBTsCS+0h4dsjvrY7/4dm7N6FLPGKe6JM
         O3CEMzdhZSN1FKsPj09PCeZjyqBZReXRI9BeBYLjXBS+pBS/DYscU17NSp1lIzsRgely
         Ycca43JeloGjUqh24wDxqxzB6BYnNIQK2YJy8J+kLgQQR2Tk85KHuS3VVOnSws9RQnbY
         LBFQ+bP0zsReF9nOH6EKKOIIA21RCSKfMwGI53WK6oh9JfTn6I+4FtqXBXS9chnJsikl
         H7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S5EvS7bVj33sjGuHzqC1ae+coFr+i3fdsVI8qqQeNRw=;
        b=jWymLR/mpUlxOUzftGkDCj5J7Ol7Upgv2kCXNaEaA18DxrKOkNCh0u+jimXfoe7zgt
         TFA1jCCKKVbMpYLq0rJN60fXJYCAJOHm959BlL/3iEYUzZcWbZmb5WRXLRwqQMqCOoAs
         QtM4Am5KihYQsyqZUMIsF3k5+LSjAft/x9uzqVd/ue91IHCY5s+nlSloOzT5CfWZccOm
         /tUyXesxG+IxkCK076YqMzbcdXuOz+/1aC6/e1IPG5DH1V5szC7wJZvJZB3mcME7NGCy
         4quhPW89dnFXr79cFAX31ogHgWdOx3qGvsZcmqwag94eXVt4FT/t2J7GMKWAx89EZeWz
         XpmQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWf2mWB8FcCmtLC2YPweKvh2xjk07BviaJpKAFyHbn0kUeWWr0Y
	v5++Ejpy/OT3bjRHUYwCaZc=
X-Google-Smtp-Source: APXvYqy8JtJ29fjb3BbjTt/qPKa7hvlcsjnRoJmRuwgQIQmpSwag+W5lcnWLEaS2ZRM7EarCu2Rdiw==
X-Received: by 2002:ac8:195d:: with SMTP id g29mr13858073qtk.65.1576263452015;
        Fri, 13 Dec 2019 10:57:32 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:2ba4:: with SMTP id e33ls2568970qtd.2.gmail; Fri, 13 Dec
 2019 10:57:31 -0800 (PST)
X-Received: by 2002:ac8:7417:: with SMTP id p23mr13397051qtq.313.1576263451474;
        Fri, 13 Dec 2019 10:57:31 -0800 (PST)
Date: Fri, 13 Dec 2019 10:57:30 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <fab5bd32-ae8d-4475-8faf-d0318498893c@googlegroups.com>
In-Reply-To: <BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540@BYAPR13MB2374.namprd13.prod.outlook.com>
References: <ER6VKMQR6V@zendesk.com>
 <ER6VKMQR6V_5df3b2cf5ea09_7a813feae9cbcf142908be_sprut@zendesk.com>,<ER6VKMQR6V_5df3b41a73f5_71983f8d8dcbcf1427328e_sprut@zendesk.com>
 <BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540@BYAPR13MB2374.namprd13.prod.outlook.com>
Subject: Re: Openiscsi Release Schedule
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_497_240409832.1576263450497"
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

------=_Part_497_240409832.1576263450497
Content-Type: multipart/alternative; 
	boundary="----=_Part_498_759059844.1576263450497"

------=_Part_498_759059844.1576263450497
Content-Type: text/plain; charset="UTF-8"

On Friday, December 13, 2019 at 9:01:40 AM UTC-8, Karla Thurs wrote:
>
> Hello,
> What is your latest version of Openiscsi and what was the release date? Do 
> you happen to have a release schedule that you follow? I see your dates for 
> old releases but don't see anything about following a certain schedule for 
> new releases. If you have anything to provide that would be great.
>
> Thank you,
> Karla Thurs
>
> Configuration Manager
> By Light Professional IT Services LLC
> karla.thurs@<hidden>.com
>
> You can always find that out by going to github "release" directory for 
our project: https://github.com/open-iscsi/open-iscsi/releases
<https://github.com/open-iscsi/open-iscsi/releases)>

I just updated the "current" release to 2.1.0, which has been out about a 
month (11/14).

The version available to end users is more controlled by what each 
distribution does, since most users do not download and compile their own 
open-iscsi package. If you wish to use the latest open-iscsi code many 
times you also need the latest kernel, for example. So if you are using 
RedHat, or SUSE, you want to be using the latest package that vendor 
supports for your OS version. If that helps you.

And no, we do not have any schedule for future releases. We are a little 
short on valuable resources (like people and time) to have such things. 
Instead, we fix any bugs we find and hope to get time to make some 
improvements.

Now my turn to ask a question: why do you wish to know?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/fab5bd32-ae8d-4475-8faf-d0318498893c%40googlegroups.com.

------=_Part_498_759059844.1576263450497
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, December 13, 2019 at 9:01:40 AM UTC-8, Karla Th=
urs wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">




<div dir=3D"ltr">
<div></div>
<div>
<div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt">
<span style=3D"display:inline!important;background-color:rgb(255,255,255);c=
olor:rgb(43,46,47);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida=
 Grande&quot;,&quot;Tahoma&quot;,Verdana,sans-serif;font-size:14px;line-hei=
ght:22px">Hello,</span><br>
<span style=3D"display:inline!important;background-color:rgb(255,255,255);c=
olor:rgb(43,46,47);font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida=
 Grande&quot;,&quot;Tahoma&quot;,Verdana,sans-serif;font-size:14px;line-hei=
ght:22px">What is your latest version of Openiscsi and what
 was the release date? Do you happen to have a release schedule that you fo=
llow? I see your dates for old releases but don&#39;t see anything about fo=
llowing a certain schedule for new releases. If you have anything to provid=
e that would be great.</span></div>
<div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt">
<br>
</div>
<div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt">
<div style=3D"border-bottom-color:currentColor;border-left-color:currentCol=
or;border-right-color:currentColor;border-top-color:currentColor;font-size-=
adjust:none;margin-bottom:0px;margin-top:0px">
<font size=3D"3" face=3D"Times New Roman"><span style=3D"border-bottom-colo=
r:currentColor;border-left-color:currentColor;border-right-color:currentCol=
or;border-top-color:currentColor;font-family:Arial,Helvetica,sans-serif;fon=
t-size:11pt;font-size-adjust:none;margin-bottom:0px;margin-top:0px">Thank
 you,</span></font></div>
<span style=3D"display:inline!important;background-color:rgb(255,255,255);f=
ont-size-adjust:none"></span>
<div style=3D"border-bottom-color:currentColor;border-left-color:currentCol=
or;border-right-color:currentColor;border-top-color:currentColor;font-size-=
adjust:none;margin-bottom:0px;margin-top:0px">
<font size=3D"3" face=3D"Times New Roman"><span style=3D"border-bottom-colo=
r:currentColor;border-left-color:currentColor;border-right-color:currentCol=
or;border-top-color:currentColor;font-family:Arial,Helvetica,sans-serif;fon=
t-size:11pt;font-size-adjust:none;margin-bottom:0px;margin-top:0px">Karla
 Thurs</span></font></div>
<span style=3D"display:inline!important;background-color:rgb(255,255,255);f=
ont-size-adjust:none"></span>
<div style=3D"border-bottom-color:currentColor;border-left-color:currentCol=
or;border-right-color:currentColor;border-top-color:currentColor;font-size-=
adjust:none;margin-bottom:0px;margin-top:0px">
<font><span style=3D"border-bottom-color:currentColor;border-left-color:cur=
rentColor;border-right-color:currentColor;border-top-color:currentColor;fon=
t-size-adjust:none;margin-bottom:0px;margin-top:0px"></span>
<p>
<span style=3D"border-bottom-color:currentColor;border-left-color:currentCo=
lor;border-right-color:currentColor;border-top-color:currentColor;color:rgb=
(0,0,0);font-family:Arial,Helvetica,sans-serif;font-size:11pt;font-size-adj=
ust:none;margin-bottom:0px;margin-top:0px">Configuration
 Manager</span><br>
</p>
<span style=3D"border-bottom-color:currentColor;border-left-color:currentCo=
lor;border-right-color:currentColor;border-top-color:currentColor;font-size=
-adjust:none;margin-bottom:0px;margin-top:0px"></span>
<div style=3D"background-color:rgb(255,255,255);border-bottom-color:current=
Color;border-left-color:currentColor;border-right-color:currentColor;border=
-top-color:currentColor;font-size-adjust:none;margin-bottom:0px;margin-top:=
0px">
<span style=3D"border-bottom-color:currentColor;border-left-color:currentCo=
lor;border-right-color:currentColor;border-top-color:currentColor;font-fami=
ly:Arial,Helvetica,sans-serif;font-size:11pt;font-size-adjust:none;margin-b=
ottom:0px;margin-top:0px">By
 Light Professional IT Services LLC</span></div>
</font>
<div style=3D"background-color:rgb(255,255,255);border-bottom-color:current=
Color;border-left-color:currentColor;border-right-color:currentColor;border=
-top-color:currentColor;font-size-adjust:none;margin-bottom:0px;margin-top:=
0px">
<font><span style=3D"border-bottom-color:currentColor;border-left-color:cur=
rentColor;border-right-color:currentColor;border-top-color:currentColor;fon=
t-family:Arial,Helvetica,sans-serif;font-size:11pt;font-size-adjust:none;ma=
rgin-bottom:0px;margin-top:0px">karla.thurs@&lt;hidden&gt;.com</span></font=
><br>
</div>
</div>
</div>
<div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt">
</div>
<div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt">
<br>
</div>
<div></div></div></div></blockquote><div>You can always find that out by go=
ing to github &quot;release&quot; directory for our project: <a href=3D"htt=
ps://github.com/open-iscsi/open-iscsi/releases)">https://github.com/open-is=
csi/open-iscsi/releases<br></a></div><div><br></div><div>I just updated the=
 &quot;current&quot; release to 2.1.0, which has been out about a month (11=
/14).</div><div><br></div><div>The version available to end users is more c=
ontrolled by what each distribution does, since most users do not download =
and compile their own open-iscsi package. If you wish to use the latest ope=
n-iscsi code many times you also need the latest kernel, for example. So if=
 you are using RedHat, or SUSE, you want to be using the latest package tha=
t vendor supports for your OS version. If that helps you.</div><div><br></d=
iv><div>And no, we do not have any schedule for future releases. We are a l=
ittle short on valuable resources (like people and time) to have such thing=
s. Instead, we fix any bugs we find and hope to get time to make some impro=
vements.</div><div><br></div><div>Now my turn to ask a question: why do you=
 wish to know?<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/fab5bd32-ae8d-4475-8faf-d0318498893c%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/fab5bd32-ae8d-4475-8faf-d0318498893c%40googlegroups.com</a>.<b=
r />

------=_Part_498_759059844.1576263450497--

------=_Part_497_240409832.1576263450497--
