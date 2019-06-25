Return-Path: <open-iscsi+bncBC755V5RXMKBBBWHZDUAKGQEPTQCQEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB0955079
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jun 2019 15:37:11 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id p206sf19829658qke.22
        for <lists+open-iscsi@lfdr.de>; Tue, 25 Jun 2019 06:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bj4Bjb97trmbvOb3CK6GUSlIV4aRunylTde2GJ9BMok=;
        b=U9uFNBWDFcQwmhrwKNdd+9THolJwOXnerAHfwglUNncRWEsvp3jsgrXzOb+zzqqVYf
         nSaGIwxQVzGQQqOpWvsP+dhsEx/nX/YmMIWrfR+XWH72yrl2RY9PxmllgXfKNQv7r4ZD
         cLMVr9sl0QorrDAi1qTDmE3BElXRolGyv0yv2gMpIif3GzTjrAZfxuOW7U/ZIzjSPE7n
         6kjtwK5aEuu614gFiHsg9rJ4HX4ByZvfDMU6WXsa8hStavX+ZmwmHiAioASFyoZblZZ5
         AnpF/GbZWS7IoJGEt5/pzQ2NttzF5h+wa3kFefAKyip58y8bhiCw8CxkN4LBQgFlpHqv
         AXpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bj4Bjb97trmbvOb3CK6GUSlIV4aRunylTde2GJ9BMok=;
        b=fiN9ZDYzKezPa4Ue3vLaE+EIJd4dVFwgGHcWNNaBAAGuKNCjasm8yfMZ+oi2faar+7
         L011tqKToCz3Gj5VurtiLbDqO4H1CsjgPclgCXlRb99ooBao/h/dW1lxV5IPpuTl9zYa
         A4YuIW27Eumm+x6oISJENcVko3fqP/yQQCYXja2QXWGhv4FesZhuUOWcKH7YsIwaAe86
         aif49ssmXgbdPk+Aiqpm8ZUgnkwFC5cEN631ecPg5C835xQMxDy/DU7JLmCPP6yurJSJ
         3wlLYt3iR2LStWbtU3aruH8uj0jZ/j9Sunk5J4CX/XCyrqT8U0+gRV1GiD2hcBmRh0cB
         vI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bj4Bjb97trmbvOb3CK6GUSlIV4aRunylTde2GJ9BMok=;
        b=rAWm0i1LbC8vVSXBTbY6BHc6/eoA5iBLJzOuxTyBs3fdyZYV/iJGuB++1J/rzoljDH
         iDpkOxEgP0okNSFVwxSpsJml55XeQ2AgSkrRRiR6gdnz5SNKvic8HPLU7kPVRMu/SFQD
         POoRvoXgmoTTjkEq+NCzVpCbglnQ8D6aaah+kjjlhXMABGED7qx16OI7sNCyKDn9DCWi
         wIFnM0lKXUdUf+ovjOZNHT5lMcHYI+snIXwI0fifHUvoelX+1k4d+zle/TbUN0tl3GQE
         O2Qt2ONiqyjFczFl3twwAC+P7c18NFXq8BA7f2Kyg7tAmIhNKntD0TQZXkQhvt/qzUci
         M7FQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXtogw0YtASMLpZpare/xqjfA2kPSbtJMH9TxZhZwBnneKxUPi3
	sXOfV4lMM9nbir3JiyQ6Z5A=
X-Google-Smtp-Source: APXvYqxMt+PU1QTziUBei+UrojJbNFNPg1X4a2qfigez9531lg8cMmiTDx/Cr4opBHiXcQf2MPz4hg==
X-Received: by 2002:a05:620a:124f:: with SMTP id a15mr127257964qkl.173.1561469830506;
        Tue, 25 Jun 2019 06:37:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:c782:: with SMTP id k2ls3682696qvj.3.gmail; Tue, 25 Jun
 2019 06:37:10 -0700 (PDT)
X-Received: by 2002:a0c:d27b:: with SMTP id o56mr26116928qvh.50.1561469830024;
        Tue, 25 Jun 2019 06:37:10 -0700 (PDT)
Date: Tue, 25 Jun 2019 06:37:08 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <2604ac31-fea0-4963-9077-1942c71f8a85@googlegroups.com>
In-Reply-To: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
References: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
Subject: Re: Open-iscsi slow boot
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2262_212914874.1561469828926"
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

------=_Part_2262_212914874.1561469828926
Content-Type: multipart/alternative; 
	boundary="----=_Part_2263_1338463854.1561469828926"

------=_Part_2263_1338463854.1561469828926
Content-Type: text/plain; charset="UTF-8"

On Saturday, June 22, 2019 at 11:00:44 AM UTC-4, Randy Broman wrote:
>
> I have open-iscsi installed on Kubuntu 19.04, to access shared storage on 
> a QNAP NAS server. The setup works, but open-iscsi slows boot:
>
> $ systemd-analyze blame
>      2min 6.105s open-iscsi.service
>          10.076s rtslib-fb-targetctl.service
>           6.042s NetworkMan.....
>           ..
>           
> and I don't need QNAP/open-iscsi to boot, so I'm trying to set up a timer 
> to delay iscsi connection until after the boot completes and the 
> Kubuntu/Plasma desktop 
> loads. Here's what I have:
>
> $ cat /lib/systemd/system/open-iscsi.timer
> [Unit]
> Description=open-iscsi timer
>
> [Timer]
> # Time to wait after booting before it run for first time
> OnBootSec=3min
> Unit=open-iscsi.service
>
> [Install]
> WantedBy=timers.target
>
> $ ls -l /lib/systemd/system/open-iscsi.service
> -rw-r--r-- 1 root root 1068 Dec 11  2018 
> /lib/systemd/system/open-iscsi.service
>
> ls -l /etc/systemd/system/timers.target.wants/open-iscsi.timer
> lrwxrwxrwx 1 root root 36 Jun 21 20:59 
> /etc/systemd/system/timers.target.wants/open-iscsi.timer -> 
> /lib/systemd/system/open-iscsi.timer
>
> (I ran $ sudo systemctl daemon-reload and $ sudo systemctl enable 
> open-iscsi.timer after creating the timer)
>
> What am I doing wrong, and/or what do I need to do to fix this?
>
> Thx!
>

I don't know anything about systemd timers, but there should be no reason 
for this.

What distro are you using? What iscsi service files are there, and which 
ones are enabled?

In SUSE we have iscsid.socket, iscsid.service, and iscsi.service. The first 
two are for the iscsid daemon, and the last is for iscsi logins/logouts. 
Then, if you're using broadcom, you might also have iscsiuio.socket and 
iscsiuio.service.

I investigated a bug once where a customer was unhappy the iscsi service 
was taking so long to startup, according the systemd "blame", but it really 
wasn't taking a long time, but the dependencies made it look that way. You 
can always completely disable iscsi serivces and compare the actual boot 
time to when it is enabled to see if it really impacting your boot time.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2604ac31-fea0-4963-9077-1942c71f8a85%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2263_1338463854.1561469828926
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Saturday, June 22, 2019 at 11:00:44 AM UTC-4, Randy Bro=
man wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><di=
v>I have open-iscsi installed on Kubuntu 19.04, to access shared storage on=
 a QNAP NAS server. The setup works, but open-iscsi slows boot:</div><div><=
br></div><div>$ systemd-analyze blame</div><div>=C2=A0 =C2=A0 =C2=A02min 6.=
105s open-iscsi.service</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A010.076s=
 rtslib-fb-targetctl.service</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6=
.042s NetworkMan.....</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ..</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>and I don&#39;t nee=
d QNAP/open-iscsi to boot, so I&#39;m trying to set up a timer to delay isc=
si connection until after the boot completes and the Kubuntu/Plasma desktop=
=C2=A0</div><div>loads. Here&#39;s what I have:</div><div><br></div><div>$ =
cat /lib/systemd/system/open-<wbr>iscsi.timer</div><div>[Unit]</div><div>De=
scription=3Dopen-iscsi timer</div><div><br></div><div>[Timer]</div><div># T=
ime to wait after booting before it run for first time</div><div>OnBootSec=
=3D3min</div><div>Unit=3Dopen-iscsi.service</div><div><br></div><div>[Insta=
ll]</div><div>WantedBy=3Dtimers.target</div><div><br></div><div>$ ls -l /li=
b/systemd/system/open-<wbr>iscsi.service</div><div>-rw-r--r-- 1 root root 1=
068 Dec 11=C2=A0 2018 /lib/systemd/system/open-<wbr>iscsi.service</div><div=
><br></div><div>ls -l /etc/systemd/system/timers.<wbr>target.wants/open-isc=
si.timer</div><div>lrwxrwxrwx 1 root root 36 Jun 21 20:59 /etc/systemd/syst=
em/timers.<wbr>target.wants/open-iscsi.timer -&gt; /lib/systemd/system/open=
-<wbr>iscsi.timer</div><div><br></div><div>(I ran $ sudo systemctl daemon-r=
eload and $ sudo systemctl enable open-iscsi.timer after creating the timer=
)</div><div><br></div><div>What am I doing wrong, and/or what do I need to =
do to fix this?</div><div><br></div><div>Thx!</div></div></blockquote><div>=
<br></div><div>I don&#39;t know anything about systemd timers, but there sh=
ould be no reason for this.</div><div><br></div><div>What distro are you us=
ing? What iscsi service files are there, and which ones are enabled?</div><=
div><br></div><div>In SUSE we have iscsid.socket, iscsid.service, and iscsi=
.service. The first two are for the iscsid daemon, and the last is for iscs=
i logins/logouts. Then, if you&#39;re using broadcom, you might also have i=
scsiuio.socket and iscsiuio.service.</div><div><br></div><div>I investigate=
d a bug once where a customer was unhappy the iscsi service was taking so l=
ong to startup, according the systemd &quot;blame&quot;, but it really wasn=
&#39;t taking a long time, but the dependencies made it look that way. You =
can always completely disable iscsi serivces and compare the actual boot ti=
me to when it is enabled to see if it really impacting your boot time.<br><=
/div></div>

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
om/d/msgid/open-iscsi/2604ac31-fea0-4963-9077-1942c71f8a85%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/2604ac31-fea0-4963-9077-1942c71f8a85%40googlegroups.com</a>.<b=
r />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2263_1338463854.1561469828926--

------=_Part_2262_212914874.1561469828926--
