Return-Path: <open-iscsi+bncBCG5HL4D24JBBHMFXHUAKGQEUKM42EI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A394F661
	for <lists+open-iscsi@lfdr.de>; Sat, 22 Jun 2019 17:00:48 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id q62sf2698724qkb.12
        for <lists+open-iscsi@lfdr.de>; Sat, 22 Jun 2019 08:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NXN0KxnX9Iiaek2jUro2jSAtDfaMF85T+ty8QZTje9U=;
        b=j/hC+1OVcAzTpzDh61phTP0fahY96/ix2gkXskcoRbAAfuwK8TtPgmIu0xcTBm4h35
         432lyIJnpxC/8c/xYwiDTLVTp0d01pUpE5WGOc9f0ym5eompBTunxG3GzpDYydoOZ9T/
         cfZ9SHzJSJi8mJnHiyNajEIHZpPJ0P+CXDJO4caxi/vsawyWlWXZnMCiqvHeBXRa7tgF
         PE2Sp/zsJ3Fa06d/dUV+kzOP5ACixkzpJsw7Moh0ssIpovT6ghIM+eE/LgLrn1zBqdY8
         7p08dQ4tEJm1TjRbJAIINfK9UKlnlXHsu6g1xD5jMBHuyBDogSBAh6i71AjEA33XDIbA
         nhIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NXN0KxnX9Iiaek2jUro2jSAtDfaMF85T+ty8QZTje9U=;
        b=JmHFU4vBfzR3v56uOVQdCJWoyKcUAjbtAvbyRmwnqwDs+rsu1mXS4WPmPy4O2O3OK4
         thjMjbJ/80m0MZaTpK2cYU1EMF1nz9gjZEBIS55lxDiTwHOZbwc+aLgtsV/MYtp2sfB2
         x2thWnz1sxleWLQqWc5WtiZusg62kaPXWaWnq99ruHNx70cxLoNsebIGHFjLjfi9GROL
         WgQNfgBveoeKr4iRoSlGwSKL7KA20BMmRQRJhuK2NbhfC7XFT2N9iD8MUpM4RTt1ZoMa
         7ryOk4nk0M5SIrTxsERM5Yhxpaqzn5e+Fpy5O+M5ZK4rR7cCkvNtaHLCllaK2wsYCPZU
         +MDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NXN0KxnX9Iiaek2jUro2jSAtDfaMF85T+ty8QZTje9U=;
        b=nOJTFm8KbLsjtkHvtuG07sGCOyLRouIlOd376jnx4eSoBTS0Djjsvgg0RCXDYP5LEt
         KSiBH2pM5nyfo/QDeY1aODCToqMgUg5DDEXubaCxuwy9tHRsQCY6sApfVbJIpR1Bm1B2
         CFVaV+y3mAxhg5WwPPek16OhkGvnVFxIfm0HyP2nMUwiQMixL2K8MsqtQ7ygLk04DjBr
         mpsycHYmvsYPsWcUoag/pnAqBz5NhBSzJraN/n7hK0U5H2ukKu3KnBtq1IQG+c8hRBbD
         k7rZdrhg9YnYyOcGIzQBoQCqdIsSl3jiitL/U3dJCdrPr8MEpfI/OJCV5VIZmdOx7n8h
         wDAA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX8cWa1NP5t+v2C9VJGdYV33276UVA87mu2LftlRaZYRXVOXd1P
	SI3TcMo4aW6IgDN4pbl9vCM=
X-Google-Smtp-Source: APXvYqzJDBdtZCImP4xMb1O+aUi4+HlQkK5/VQIoLlnDiu1KRhMEnTmjZdk1OtO7CWOwecxXdI5Nwg==
X-Received: by 2002:ae9:ed4b:: with SMTP id c72mr10345233qkg.400.1561215645566;
        Sat, 22 Jun 2019 08:00:45 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:2bb6:: with SMTP id m51ls3430458qtm.8.gmail; Sat, 22 Jun
 2019 08:00:45 -0700 (PDT)
X-Received: by 2002:ac8:2d19:: with SMTP id n25mr84298145qta.180.1561215644979;
        Sat, 22 Jun 2019 08:00:44 -0700 (PDT)
Date: Sat, 22 Jun 2019 08:00:44 -0700 (PDT)
From: Randy Broman <randy.broman@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
Subject: Open-iscsi slow boot
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1122_726483295.1561215644085"
X-Original-Sender: randy.broman@gmail.com
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

------=_Part_1122_726483295.1561215644085
Content-Type: multipart/alternative; 
	boundary="----=_Part_1123_1174326274.1561215644086"

------=_Part_1123_1174326274.1561215644086
Content-Type: text/plain; charset="UTF-8"

I have open-iscsi installed on Kubuntu 19.04, to access shared storage on a 
QNAP NAS server. The setup works, but open-iscsi slows boot:

$ systemd-analyze blame
     2min 6.105s open-iscsi.service
         10.076s rtslib-fb-targetctl.service
          6.042s NetworkMan.....
          ..
          
and I don't need QNAP/open-iscsi to boot, so I'm trying to set up a timer 
to delay iscsi connection until after the boot completes and the 
Kubuntu/Plasma desktop 
loads. Here's what I have:

$ cat /lib/systemd/system/open-iscsi.timer
[Unit]
Description=open-iscsi timer

[Timer]
# Time to wait after booting before it run for first time
OnBootSec=3min
Unit=open-iscsi.service

[Install]
WantedBy=timers.target

$ ls -l /lib/systemd/system/open-iscsi.service
-rw-r--r-- 1 root root 1068 Dec 11  2018 
/lib/systemd/system/open-iscsi.service

ls -l /etc/systemd/system/timers.target.wants/open-iscsi.timer
lrwxrwxrwx 1 root root 36 Jun 21 20:59 
/etc/systemd/system/timers.target.wants/open-iscsi.timer -> 
/lib/systemd/system/open-iscsi.timer

(I ran $ sudo systemctl daemon-reload and $ sudo systemctl enable 
open-iscsi.timer after creating the timer)

What am I doing wrong, and/or what do I need to do to fix this?

Thx!

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9d371bfb-b339-4d1c-960a-e5bcf30be292%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_1123_1174326274.1561215644086
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have open-iscsi installed on Kubuntu 19.04, to acce=
ss shared storage on a QNAP NAS server. The setup works, but open-iscsi slo=
ws boot:</div><div><br></div><div>$ systemd-analyze blame</div><div>=C2=A0 =
=C2=A0 =C2=A02min 6.105s open-iscsi.service</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A010.076s rtslib-fb-targetctl.service</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 6.042s NetworkMan.....</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ..</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><d=
iv>and I don&#39;t need QNAP/open-iscsi to boot, so I&#39;m trying to set u=
p a timer to delay iscsi connection until after the boot completes and the =
Kubuntu/Plasma desktop=C2=A0</div><div>loads. Here&#39;s what I have:</div>=
<div><br></div><div>$ cat /lib/systemd/system/open-iscsi.timer</div><div>[U=
nit]</div><div>Description=3Dopen-iscsi timer</div><div><br></div><div>[Tim=
er]</div><div># Time to wait after booting before it run for first time</di=
v><div>OnBootSec=3D3min</div><div>Unit=3Dopen-iscsi.service</div><div><br><=
/div><div>[Install]</div><div>WantedBy=3Dtimers.target</div><div><br></div>=
<div>$ ls -l /lib/systemd/system/open-iscsi.service</div><div>-rw-r--r-- 1 =
root root 1068 Dec 11=C2=A0 2018 /lib/systemd/system/open-iscsi.service</di=
v><div><br></div><div>ls -l /etc/systemd/system/timers.target.wants/open-is=
csi.timer</div><div>lrwxrwxrwx 1 root root 36 Jun 21 20:59 /etc/systemd/sys=
tem/timers.target.wants/open-iscsi.timer -&gt; /lib/systemd/system/open-isc=
si.timer</div><div><br></div><div>(I ran $ sudo systemctl daemon-reload and=
 $ sudo systemctl enable open-iscsi.timer after creating the timer)</div><d=
iv><br></div><div>What am I doing wrong, and/or what do I need to do to fix=
 this?</div><div><br></div><div>Thx!</div></div>

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
om/d/msgid/open-iscsi/9d371bfb-b339-4d1c-960a-e5bcf30be292%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/9d371bfb-b339-4d1c-960a-e5bcf30be292%40googlegroups.com</a>.<b=
r />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_1123_1174326274.1561215644086--

------=_Part_1122_726483295.1561215644085--
