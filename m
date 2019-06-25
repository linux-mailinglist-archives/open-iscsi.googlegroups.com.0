Return-Path: <open-iscsi+bncBCG5HL4D24JBBOH4ZDUAKGQEIAGSPOQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5335536E
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jun 2019 17:31:05 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id t196sf20389920qke.0
        for <lists+open-iscsi@lfdr.de>; Tue, 25 Jun 2019 08:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cTEy0psdtkBdluOU2f/MtxQLkOhMLrej+s1+BSyXsp0=;
        b=o+D8WO01/TMF5xJzjMNdn10DDHX+ylXRmtBiUxIpZ+xMrir22ivWkX2uB/V87m+LvU
         aCUii2Qx5WLZTZSWWZpCZ9Uu1R/o5yesl1ZriAE/P1wYWdxbDEVXR2DWBCkd5GtfVGOp
         Gd2LMNWii5fNmxg3hYAZ2hVPnOT8IsVMSV4sHJDKyvYFfTgXmlbiUi8RixqX+Ck9YMO5
         JLmC/r+N4f2FRIsCVAtIqW1OV4/7wzMOM/D4t3u+96+s58Jas2EW5ZdTAixSu58gJG1D
         02M3Whq6EZK25rXaAPniAHzaXyQ4gyY2UKMXL/e8JjrZ99IvRDsxSL4HMTr1afp3ooBO
         hUXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cTEy0psdtkBdluOU2f/MtxQLkOhMLrej+s1+BSyXsp0=;
        b=Viafv9wmdCfkkfEyVWJl8HU3Ftu4ttdbt4bZwMQHHL0f6LizuxkhY/pSQ2cHZfWeGc
         8Qyn1H5I8NAc4aF/DDiSp/rx0IMr+op70sBmT1JYeM6gbB9U7ikgeEnuqqkUMDCTE9sQ
         TY43Qd587cl/mSn19xsrCfJKkD8PjFOYSgrQkFlChX9nzxFF33zspMWdFUjmvH6ucj9U
         mUtrOjF09baV6i+eJzLmpgf2lwj2wQO0NYxjvqPqvxyhjE9f/8zZCEiZHhmYAFJtckMH
         PvzbviT5ACryhnVR5U1HjYLtkiP7LOvi1c6WcsbyPxyc2N3euuho1kd8umGJYCZpHXtv
         VnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cTEy0psdtkBdluOU2f/MtxQLkOhMLrej+s1+BSyXsp0=;
        b=M3cm/h/6Hv6TfQ1xBeLeJtWD80aovWFx2+Xt/kj/mttHS9R5HULQ1EipAwlPI7WODr
         xr50dA2AHD/1lRWUOHqXQvXumhWmfdmkpWMaojtl7kkOqfy942ftMs7EBTp4Rr9heYq6
         38KtuVAdcgrx7Z573ZRTvqXSU8ox+/QB7SVZGIGmLBbzE1p/wvbhzgiOsq6fZCgfpCT9
         BpETTHx7Ti1GZSHoGa3BYGcof1fB6Qn2/pi0VtZNmOkC1OxZ5xr0gkuKqotcftVNLK9s
         EcVulpYaRaAJD29CLnFzgTUvp6n3UPDqD1jMt4+zJ4DjmrXusFDuGR1k768Ofz8jkvVe
         8upQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWKKvFdK9QXSM8Leei735i71pmvPQiY4wQNo5s8dWNrByHfsYrV
	3GAEJcKVVAVF5RypLTXX+wQ=
X-Google-Smtp-Source: APXvYqz9ggqtW9Z+dX+rpNdqbwGz+cTPD2E+Xim2smloZ4zDTg5tfYJ5HNKKu1PbWtZY4jcXbyGkzg==
X-Received: by 2002:ac8:37b8:: with SMTP id d53mr115125374qtc.227.1561476664853;
        Tue, 25 Jun 2019 08:31:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:91ab:: with SMTP id n40ls3755386qvn.4.gmail; Tue, 25 Jun
 2019 08:31:04 -0700 (PDT)
X-Received: by 2002:a0c:f78d:: with SMTP id s13mr60828890qvn.156.1561476664224;
        Tue, 25 Jun 2019 08:31:04 -0700 (PDT)
Date: Tue, 25 Jun 2019 08:31:03 -0700 (PDT)
From: Randy Broman <randy.broman@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <37c0b6be-68ec-474e-b95d-e9450bfc4000@googlegroups.com>
In-Reply-To: <2604ac31-fea0-4963-9077-1942c71f8a85@googlegroups.com>
References: <9d371bfb-b339-4d1c-960a-e5bcf30be292@googlegroups.com>
 <2604ac31-fea0-4963-9077-1942c71f8a85@googlegroups.com>
Subject: Re: Open-iscsi slow boot
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2258_1452284460.1561476663550"
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

------=_Part_2258_1452284460.1561476663550
Content-Type: multipart/alternative; 
	boundary="----=_Part_2259_29121890.1561476663550"

------=_Part_2259_29121890.1561476663550
Content-Type: text/plain; charset="UTF-8"

Thanks for your response. I'm using Kubuntu 19.04. I disabled the iscsi 
service and in fact the boot was much faster:

$ systemd-analyze blame  
        10.079s rtslib-fb-targetctl.service 
         6.134s NetworkManager-wait-online.service 
          928ms snap-lxd-10972.mount

While I don't need the QNAP/iscsi to boot, disabling the iscsi service is 
not optimal, as I
need access to data on QNAP to operate. 

While I'm not a novice, I confess that I'm in "deep water" when it comes to 
investigating systemd
dependencies and fixes. The iscsiuio.service exists on my Kubuntu 
initiator, but I don't know how to determine if it's
causing the problem, or for that matter even if it's being used. Regards 
Broadcom, are you referring to use on the Kubuntu
initiator, or the QNAP target?

Any further tips or links to diagnose and/or fix appreciated .... Thx


On Tuesday, June 25, 2019 at 6:37:09 AM UTC-7, The Lee-Man wrote:
>
> On Saturday, June 22, 2019 at 11:00:44 AM UTC-4, Randy Broman wrote:
>>
>> I have open-iscsi installed on Kubuntu 19.04, to access shared storage on 
>> a QNAP NAS server. The setup works, but open-iscsi slows boot:
>>
>> $ systemd-analyze blame
>>      2min 6.105s open-iscsi.service
>>          10.076s rtslib-fb-targetctl.service
>>           6.042s NetworkMan.....
>>           ..
>>           
>> and I don't need QNAP/open-iscsi to boot, so I'm trying to set up a timer 
>> to delay iscsi connection until after the boot completes and the 
>> Kubuntu/Plasma desktop 
>> loads. Here's what I have:
>>
>> $ cat /lib/systemd/system/open-iscsi.timer
>> [Unit]
>> Description=open-iscsi timer
>>
>> [Timer]
>> # Time to wait after booting before it run for first time
>> OnBootSec=3min
>> Unit=open-iscsi.service
>>
>> [Install]
>> WantedBy=timers.target
>>
>> $ ls -l /lib/systemd/system/open-iscsi.service
>> -rw-r--r-- 1 root root 1068 Dec 11  2018 
>> /lib/systemd/system/open-iscsi.service
>>
>> ls -l /etc/systemd/system/timers.target.wants/open-iscsi.timer
>> lrwxrwxrwx 1 root root 36 Jun 21 20:59 
>> /etc/systemd/system/timers.target.wants/open-iscsi.timer -> 
>> /lib/systemd/system/open-iscsi.timer
>>
>> (I ran $ sudo systemctl daemon-reload and $ sudo systemctl enable 
>> open-iscsi.timer after creating the timer)
>>
>> What am I doing wrong, and/or what do I need to do to fix this?
>>
>> Thx!
>>
>
> I don't know anything about systemd timers, but there should be no reason 
> for this.
>
> What distro are you using? What iscsi service files are there, and which 
> ones are enabled?
>
> In SUSE we have iscsid.socket, iscsid.service, and iscsi.service. The 
> first two are for the iscsid daemon, and the last is for iscsi 
> logins/logouts. Then, if you're using broadcom, you might also have 
> iscsiuio.socket and iscsiuio.service.
>
> I investigated a bug once where a customer was unhappy the iscsi service 
> was taking so long to startup, according the systemd "blame", but it really 
> wasn't taking a long time, but the dependencies made it look that way. You 
> can always completely disable iscsi serivces and compare the actual boot 
> time to when it is enabled to see if it really impacting your boot time.
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/37c0b6be-68ec-474e-b95d-e9450bfc4000%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2259_29121890.1561476663550
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your response. I&#39;m using=C2=A0Kubuntu 19.04=
. I disabled the iscsi service and in fact the boot was much faster:<div><s=
pan style=3D"font-family:monospace"><span style=3D"color: rgb(0, 0, 0);"><b=
r></span></span></div><div><span style=3D"font-family:monospace"><span styl=
e=3D"color: rgb(0, 0, 0);">$ systemd-analyze blame =C2=A0</span><br> =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A010.079s rtslib-fb-targetctl.servi=
ce
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A06.134s NetworkMa=
nager-wait-online.service
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0928ms snap=
-lxd-10972.mount</span></div><div><br></div><div>While<span style=3D"font-f=
amily:monospace"><font size=3D"2">=C2=A0I don&#39;t need the QNAP/iscsi to =
boot, disabling the iscsi service is not optimal, as I</font></span></div><=
div><span style=3D"font-family:monospace"><font size=3D"2">need access to d=
ata on QNAP to operate.=C2=A0</font></span></div><div><span style=3D"font-f=
amily:monospace"><font size=3D"2"><br></font></span></div><div><font face=
=3D"monospace" size=3D"2">While I&#39;m not a novice, I confess that I&#39;=
m in &quot;deep water&quot; when it comes to investigating systemd</font></=
div><div><font face=3D"monospace" size=3D"2">dependencies and fixes. </font=
>The iscsiuio.service exists on my Kubuntu initiator, but I don&#39;t know =
how to determine if it&#39;s<br></div><div>causing the problem, or for that=
 matter even if it&#39;s being used. Regards Broadcom, are you referring to=
 use on the Kubuntu</div><div>initiator, or the QNAP target?</div><div><br>=
</div><div>Any further tips or links to diagnose and/or fix appreciated ...=
. Thx</div><div><span style=3D"font-family:monospace"><br></span><br>On Tue=
sday, June 25, 2019 at 6:37:09 AM UTC-7, The Lee-Man wrote:<blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #c=
cc solid;padding-left: 1ex;"><div dir=3D"ltr">On Saturday, June 22, 2019 at=
 11:00:44 AM UTC-4, Randy Broman wrote:<blockquote class=3D"gmail_quote" st=
yle=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div>I have open-iscsi installed on Kubuntu 19.04, to =
access shared storage on a QNAP NAS server. The setup works, but open-iscsi=
 slows boot:</div><div><br></div><div>$ systemd-analyze blame</div><div>=C2=
=A0 =C2=A0 =C2=A02min 6.105s open-iscsi.service</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A010.076s rtslib-fb-targetctl.service</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 6.042s NetworkMan.....</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ..</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</di=
v><div>and I don&#39;t need QNAP/open-iscsi to boot, so I&#39;m trying to s=
et up a timer to delay iscsi connection until after the boot completes and =
the Kubuntu/Plasma desktop=C2=A0</div><div>loads. Here&#39;s what I have:</=
div><div><br></div><div>$ cat /lib/systemd/system/open-<wbr>iscsi.timer</di=
v><div>[Unit]</div><div>Description=3Dopen-iscsi timer</div><div><br></div>=
<div>[Timer]</div><div># Time to wait after booting before it run for first=
 time</div><div>OnBootSec=3D3min</div><div>Unit=3Dopen-iscsi.service</div><=
div><br></div><div>[Install]</div><div>WantedBy=3Dtimers.target</div><div><=
br></div><div>$ ls -l /lib/systemd/system/open-<wbr>iscsi.service</div><div=
>-rw-r--r-- 1 root root 1068 Dec 11=C2=A0 2018 /lib/systemd/system/open-<wb=
r>iscsi.service</div><div><br></div><div>ls -l /etc/systemd/system/timers.<=
wbr>target.wants/open-iscsi.timer</div><div>lrwxrwxrwx 1 root root 36 Jun 2=
1 20:59 /etc/systemd/system/timers.<wbr>target.wants/open-iscsi.timer -&gt;=
 /lib/systemd/system/open-<wbr>iscsi.timer</div><div><br></div><div>(I ran =
$ sudo systemctl daemon-reload and $ sudo systemctl enable open-iscsi.timer=
 after creating the timer)</div><div><br></div><div>What am I doing wrong, =
and/or what do I need to do to fix this?</div><div><br></div><div>Thx!</div=
></div></blockquote><div><br></div><div>I don&#39;t know anything about sys=
temd timers, but there should be no reason for this.</div><div><br></div><d=
iv>What distro are you using? What iscsi service files are there, and which=
 ones are enabled?</div><div><br></div><div>In SUSE we have iscsid.socket, =
iscsid.service, and iscsi.service. The first two are for the iscsid daemon,=
 and the last is for iscsi logins/logouts. Then, if you&#39;re using broadc=
om, you might also have iscsiuio.socket and iscsiuio.service.</div><div><br=
></div><div>I investigated a bug once where a customer was unhappy the iscs=
i service was taking so long to startup, according the systemd &quot;blame&=
quot;, but it really wasn&#39;t taking a long time, but the dependencies ma=
de it look that way. You can always completely disable iscsi serivces and c=
ompare the actual boot time to when it is enabled to see if it really impac=
ting your boot time.<br></div></div></blockquote></div></div>

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
om/d/msgid/open-iscsi/37c0b6be-68ec-474e-b95d-e9450bfc4000%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/37c0b6be-68ec-474e-b95d-e9450bfc4000%40googlegroups.com</a>.<b=
r />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2259_29121890.1561476663550--

------=_Part_2258_1452284460.1561476663550--
