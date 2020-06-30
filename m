Return-Path: <open-iscsi+bncBD7Z7UVWSMJBB5OW533QKGQERHRVDZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ABA20FE8F
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 23:15:35 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id e12sf1841840vkd.3
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 14:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593551734; cv=pass;
        d=google.com; s=arc-20160816;
        b=PNi7egjCX45JzA11CEEa5V+fVONPdXNzMpXF2i2QRyku7xEmeJEJHmCtuYsoQ+/rMY
         rMuJVXiRacsSWJsd9dR4ECxx4l197oU6HmBnJnzAGGhAYarKHAPejEDt2jCQM/xfnIRg
         3NHk1tRADFHWdOO+0BImWMS59M31a/i3dlersoA6TTAj0tjwFclLbT+ZC8EsZtcXAI6P
         l+LI5JSUvYUZsmTw0DTaL9JmGSrKv+x7RRtPWeaocODlTzcUM367E1DsLJLG2qiqIMs9
         gYLjKZp+dLuHLN2Yj6Xe6qiUwf22SDpGShWqDs4c1p1xhL1UERBFGc4Sg/84JcbgIQPr
         vcUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=K1pyC/2v6y+Sl4ecarhaqVjtQVkBLurPCKa415mlF5I=;
        b=HYkT4AlvfNzU9rUE4DHcstRo78bOeEaRlVpVvwMh3vwUbo02lFFI5tRnTR+ltFsztu
         13CdLvtvsqYitvQslsNRGN1B32jj9bHXETCQZnyPZfwp7Dk8iacHvRsAtKalupmiRezQ
         nbBTMQvIODcC9dAtAbL43j57MrU9ygoimTCMImvva9b0WvhcgzyQXxeMwDWKRNjtRBCY
         +KqS65t0fCTAdvGwvwqA+EOM0HmY9o7i6OGk9XhwHpN2FnQ6yh+Xpt+RLDBNbxmQwOF2
         1X6Ybh4kkjZzB9LsCFYjGJUt0O4ZVeVnJA0a6atx27Ayh1ANEbS/FMXG4VV87m4YE29A
         qEtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cqZ+zgOD;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K1pyC/2v6y+Sl4ecarhaqVjtQVkBLurPCKa415mlF5I=;
        b=c9CsNT7zgaxRT5Nq5r7MxX0zK61gcRbC6i02/cGs8VteLnUSBXiwxPxF74TXM95t4S
         EDsLO0VHMUjAqG1FCy3zAJpRNBIFCgX4gOhCnijYJVYa1uZcAr3hITg42obEe50BQCyB
         SLtVBnUjn4g9vUy/mkreUvmHG8kd5FU05Vj4fvEQVHw1FqI+htDL54GRAQaVlX/gRwFZ
         A538aHbPQ+H0GYar5lMJhcZVayTtP8kD2uFAAFueFE9C5Her81NHBlp1EM1S3XitRvy4
         sFHZXC2LvBNWGic5mSAWS/+LJk2VSA+buftKgVxgMx3H73FqAHVQSYk5PrEkXrwS9nuB
         Ubag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K1pyC/2v6y+Sl4ecarhaqVjtQVkBLurPCKa415mlF5I=;
        b=RDGqGZmwIadiNNukQ2IHBgZSf4RSjkW61wLvRxw4yiNBWpjS/EAQ1xEFLI1PUhSJYQ
         gYB5VBXkCwbmmZL8W7yRZe8iigqu58b8HcjzTxiEJZTB3CCD6IxxbwMFNJFt1FZmsIqO
         CMifar6+78xFAbkWS3ca+I/PQHF4FNJ0r8yWDMcwT20JmXjbNpTBDoxEUOphatc+KIfH
         K/u7UOz1YvFNqwXNhG1W0CQ4SeRPB/LjmKf3ew1yQ8wREZPj54lBFiSMYtUBM1hx3I5U
         L4g7sVDsMB04TpV4N1SLEwRuz0SwLZAKfgcRjunsXPw0JPyKnZ3dEgsiMfzDK/oHQQvB
         4JdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K1pyC/2v6y+Sl4ecarhaqVjtQVkBLurPCKa415mlF5I=;
        b=SRHAXBLo86bhw3Ye1esNH9d1uxPgEoQieX6ygShDHTnwgOgmGtsbxo97G/3agpEvZ2
         Wqnxj7QizBfakoZeYYK9+BurPWdnFZcjeNV97mDpgMcZNw0I4M4BayFNZbShprvazlpY
         MTRJl7zIfi35F2fQ9n9r5pCs4rpjZshn33Q/0H+TdHVDIQJKex5752XWs/hXsFi7tjU5
         nZd+JdQb6oJKQn4TbpRfIFAfcOGBfaijJlsrgjOXyMP7O0bxCAVhErMllYiphZA1riDw
         pt+ijvg+vhtjQ6P5o8uFUWV8YwTl0UAEQG/NkQpRTcHcsIsGsySChe+BpI+eQvsHoBkL
         Ka2Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5315Y6HlZ/p4I3ExCUzRCwa0E+BiLNJFD4H6v8Eq19KqGtGE71pT
	XnBw7vLHs70ar9f938QHFqA=
X-Google-Smtp-Source: ABdhPJwii5E4zI1ZdNyoV0zqOj+E4ni89oQvfy8GaNh3PFTdHR5xWAkfoxSzIE3VGHZskr5E7FOqiA==
X-Received: by 2002:a67:fd0b:: with SMTP id f11mr15517778vsr.93.1593551734051;
        Tue, 30 Jun 2020 14:15:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:f351:: with SMTP id p17ls2534817vsm.5.gmail; Tue, 30 Jun
 2020 14:15:33 -0700 (PDT)
X-Received: by 2002:a67:17c6:: with SMTP id 189mr15503981vsx.83.1593551733610;
        Tue, 30 Jun 2020 14:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593551733; cv=none;
        d=google.com; s=arc-20160816;
        b=yhiSPCzw8ljbJb45GY2rokWZi7AuMj97pjKuJlKsqZdAjxzwLf6eNQc2pTNofAGdBi
         dyoNg3ggT7mHr24a6Eds+GQUjywd04vgWr0Rgm8uc+cdWi99TeapTt2NU52iuBFqgKs0
         6XX/DnFXVn2ahdv/rha0CxKi57skdSDjcjXWMazB11nm6cJR8DNXTsPuVkn3JxXhlmQw
         DCyUNHsT7+5fKM59QqaeyB5t6dCDhZT3VPAsYp0V6ajnknFvna6MehXOlGYb56hNbHsr
         qvSm9ioD+F20as+iVvllxeXtsg54Qvsx+2rlejUAAiA6EdTyP5xPycjjnLtEzLZSbw9O
         KtaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=faAZUYu3zt+8Eq8U3QVBwuAMkHiCmE3Ie0ej2Brebt8=;
        b=XseTreFCwVYgrcBxDmfkKa/i8BwbH4azFEkK2pzWS3les0OAfIlATmt1jTPEzdJjnO
         nAhIQvT6P/JOUmS1UK4/T0d1BTgVdfNtRH/plWN3dnyuLhsiVsy+ky7cqtEZkTWrVQeg
         hxPtKx5f99vRfdkw4whAneC2VajCSUVGeOHPTkltRotdpX6BP4G2pncUiM1vXxO56rTf
         zt4qbGzL70HoNiwTsYz0yvVzIawtStcZgtLEW2tHI3Vm2CfhBtuQFHV0urEsyWbvaKni
         MR5Yyswksd6/dWcwid+SDCOl5M+qe0c1NlSxWXbwP30W8XNunvFIbbkGet5orLCOsyRM
         e2JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cqZ+zgOD;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id t24si178477uaq.0.2020.06.30.14.15.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id a12so22641203ion.13
        for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 14:15:33 -0700 (PDT)
X-Received: by 2002:a6b:1496:: with SMTP id 144mr23824536iou.6.1593551729822;
 Tue, 30 Jun 2020 14:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com> <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
In-Reply-To: <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Tue, 30 Jun 2020 17:15:19 -0400
Message-ID: <CAK3e-EbOmtv1j6c8AecE1jkGy=zt_0Jdj=Qwj41DOXuwVNPavA@mail.gmail.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c992ca05a953acc4"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cqZ+zgOD;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000c992ca05a953acc4
Content-Type: text/plain; charset="UTF-8"

Re: Subnets.  Not all iSCSI targets operate on multiple subnets.  The
Equallogic for example is intended for a single IP subnet schema.,
Multiple subnet require routing be enabled.

Don


On Tue, Jun 30, 2020 at 1:02 PM The Lee-Man <leeman.duncan@gmail.com> wrote:

> On Tuesday, June 30, 2020 at 8:55:13 AM UTC-7, Donald Williams wrote:
>>
>> Hello,
>>
>>  Assuming that devmapper is running and MPIO properly configured you want
>> to connect to the same volume/target from different interfaces.
>>
>> However in your case you aren't specifying the same interface. "default"
>> but they are on the same subnet.  Which typically will only use the default
>> NIC for that subnet.
>>
>
> Yes, generally best practices require that each component of your two
> paths between initiator and target are redundant. This means that, in the
> case of networking, you want to be on different subnets, served by
> different switches. You also want two different NICs on your initiator, if
> possible, although many times they are on the same card. But, obviously,
> some points are not redundant (like your initiator or target).
>
>>
>> What iSCSI target are you using?
>>
>>  Regards,
>> Don
>>
>> On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer <abawer@redhat.com> wrote:
>>
>>> [Sorry if this message is duplicated, haven't seen it is published in
>>> the group]
>>>
>>> Hi,
>>>
>>> Have couple of question regarding iscsiadm version 6.2.0.878-2:
>>>
>>> 1) Is it safe to have concurrent logins to the same target from
>>> different interfaces?
>>> That is, running the following commands in parallel:
>>>
>>> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p
>>> 10.35.18.121:3260,1 -l
>>> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p
>>> 10.35.18.166:3260,1 -l
>>>
>>> 2) Is there a particular reason for the default values of
>>> node.conn[0].timeo.login_timeout and node.session.initial_login_
>>> retry_max?
>>> According to comment in iscsid.conf it would spend 120 seconds in case
>>> of an unreachable interface login:
>>>
>>> # The default node.session.initial_login_retry_max is 8 and
>>> # node.conn[0].timeo.login_timeout is 15 so we have:
>>> #
>>> # node.conn[0].timeo.login_timeout * node.session.initial_login_retry_max
>>> =
>>> #                                                               120
>>> seconds
>>>
>>>
>>> Thanks,
>>> Amit
>>>
>>> --
>>> You received this message because you are subscribed to the Google
>>> Groups "open-iscsi" group.
>>> To unsubscribe from this group and stop receiving emails from it, send
>>> an email to open-iscsi+unsubscribe@googlegroups.com.
>>> To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com
>>> <https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com?utm_medium=email&utm_source=footer>
>>> .
>>>
>> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EbOmtv1j6c8AecE1jkGy%3Dzt_0Jdj%3DQwj41DOXuwVNPavA%40mail.gmail.com.

--000000000000c992ca05a953acc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Re: Subnets.=C2=A0 Not all iSCSI targets=C2=A0operate on m=
ultiple subnets.=C2=A0 The Equallogic for example is intended for a single =
IP subnet schema.,=C2=A0 Multiple=C2=A0subnet require routing be enabled.=
=C2=A0<div><br></div><div>Don<br><div><br></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 30, 2020=
 at 1:02 PM The Lee-Man &lt;<a href=3D"mailto:leeman.duncan@gmail.com">leem=
an.duncan@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">On Tuesday, June 30, 2020 at 8:55:13 AM=
 UTC-7, Donald Williams wrote:<blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hello,<div>=C2=A0</div><div>=C2=A0Assuming that devma=
pper is running and MPIO properly configured you want to connect to the sam=
e volume/target from different interfaces.=C2=A0</div><div><br></div><div>H=
owever in your case you aren&#39;t specifying=C2=A0the same interface. &quo=
t;default&quot;=C2=A0 but they are on the same subnet.=C2=A0 Which typicall=
y will only use the default NIC for that subnet.=C2=A0</div></div></blockqu=
ote><div><br></div><div>Yes, generally best practices require that each com=
ponent of your two paths between initiator and target are redundant. This m=
eans that, in the case of networking, you want to be on different subnets, =
served by different switches. You also want two different NICs on your init=
iator, if possible, although many times they are on the same card. But, obv=
iously, some points are not redundant (like your initiator or target). <br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv><br></div><div>What iSCSI target are you using?=C2=A0=C2=A0</div><div><b=
r></div><div>=C2=A0Regards,</div><div>Don</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr">On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer &lt;<a=
 href=3D"mailto:abawer@redhat.com" rel=3D"nofollow" target=3D"_blank">abawe=
r@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div><div><span></span></div></div><span><span><span><span><spa=
n><span><span><span><div><span>[Sorry if this message is duplicated, haven&=
#39;t seen it is published in the group]</span></div><div><span><br><span d=
ir=3D"ltr"></span> </span></div></span></span></span></span></span></span><=
/span></span><span><span><span><span><span><span><span><span><div><span></s=
pan></div></span></span></span></span></span></span></span></span><div><div=
><div><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Have couple of que=
stion regarding iscsiadm version 6.2.0.878-2:</div><div><br></div><div>1) I=
s it safe to have concurrent logins to the same target from different inter=
faces? <br></div><div>That is, running the following commands in parallel:<=
/div><div><br></div><div>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2=
 -I default -p <a href=3D"http://10.35.18.121:3260" rel=3D"nofollow" target=
=3D"_blank">10.35.18.121:3260</a>,1 -l</div><div>iscsiadm -m node -T iqn.20=
03-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http://10.35.18.166:3260"=
 rel=3D"nofollow" target=3D"_blank">10.35.18.166:3260</a>,1 -l</div><div><b=
r></div><div>2) Is there a particular reason for the default values of=C2=
=A0 node.conn[0].timeo.login_<span></span>timeout and node.session.initial_=
login_<span></span>retry_max?</div><div>According to comment in iscsid.conf=
 it would spend 120 seconds in case of an unreachable interface login:</div=
><div><br></div><div># The default node.session.initial_login_<span></span>=
retry_max is 8 and<br># node.conn[0].timeo.login_<span></span>timeout is 15=
 so we have:<br>#<br># node.conn[0].timeo.login_<span></span>timeout * node=
.session.initial_login_<span></span>retry_max =3D<br># =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 120 seconds<br></div><div>=
<br></div><div><br></div><div>Thanks,</div><div> Amit</div></div></div></di=
v></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" rel=3D"n=
ofollow" target=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" rel=3D"nofollow" target=3D"=
_blank">https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6=
f-93e8da1e19bbn%40googlegroups.com</a>.<br>
</blockquote></div>
</blockquote></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://g=
roups.google.com/d/msgid/open-iscsi/bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco%4=
0googlegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EbOmtv1j6c8AecE1jkGy%3Dzt_0Jdj%3DQwj41DOXuwVNPa=
vA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/open-iscsi/CAK3e-EbOmtv1j6c8AecE1jkGy%3Dzt_0Jdj%3DQwj41D=
OXuwVNPavA%40mail.gmail.com</a>.<br />

--000000000000c992ca05a953acc4--
