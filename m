Return-Path: <open-iscsi+bncBDLINFGG5UCBB5FZUL2QKGQE5REIXEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9651BCE67
	for <lists+open-iscsi@lfdr.de>; Tue, 28 Apr 2020 23:15:33 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id z3sf26040913qtb.6
        for <lists+open-iscsi@lfdr.de>; Tue, 28 Apr 2020 14:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KJEjJyAGCzv/hd2GSk/00yEShFrJMCpPbTfX3v0Qdfs=;
        b=DNtpr4wLxbBuSZGuXg1eTSYcBzbruSUjfqOGQ2pEOEwXahqM0EacUEaQnen+Eajuxi
         BNPPEFQRmqoMrpdAw4doHqhbdh/FItjtZdRhmQl0AP4ce+0ois3199Kq1K7YXOsxLIZB
         R1OXRIEry1twV/36A5N+VOqYW4+jDb3jWzSGS51HpLnpqNEf5njE9ebXRSzCcp571By/
         1FGqFgIWd6GYqMM12KxFdi7LViUhYHTAHPRtSx/9aGzlOedVaxPE4hplUc4gSwpdD/xv
         W2RrfbRWNtIJPXBABPKl0AlmLPb7EEbnxfY9VS2c9yCcsk5snHjbDknxAmhU2/4x3moI
         fQ6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KJEjJyAGCzv/hd2GSk/00yEShFrJMCpPbTfX3v0Qdfs=;
        b=DulYpFE1+bt4NIS87OGYFSkFFjFejnKCowbFw2pKWg7L7ixcGrLhOrzRXCxicB8I7Z
         09vtKC6LYR9DbLVK9HTST6djIzrtQnHycMyFUc/86lpTJmbJzGoyFQGBVRGlu0p79rbp
         2bMc+ZAZ3TTzfeOQXkxhYMRaDVL5FiDoAXUK+Avg7UR7f78+8frhQzVDz2yGXwtjyETa
         jt1zOGLC7shcymGt+o8T729jQbNpmrejHgN3XQWb/kNzIFMcwRZu7IVjy/ri9a+tEyzX
         7GHbCjp87j7akt2NyaoEiyNfqGuTw9SgESTfmWrih4KO88uw2PE9lhSAlys9YnsCZV9f
         wMwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KJEjJyAGCzv/hd2GSk/00yEShFrJMCpPbTfX3v0Qdfs=;
        b=iwFebIbpLtF0KY+n3b5nZrK5UBvZflIwXTnf9CBz5VMfVajquw8xEar44xaA3HW1Kg
         TaaXq1lkrQBCdXQCJ+X6tqdkN0Tqiqn71NAq0jqpOc43CYCcb/SCW9u0kiyxwp+MYq3B
         2soNNXI9OfsVd7spNSZfjGWaro+f20Oy5cTnbX7z/cz+LO/BXK4qNzJTehq2jezmyvnf
         eVhA9yzJ9oMLGKnK25RMSUriH/ehFQGE/H+fr0ti3FQnZTa7IVvi4sS2V9rA/Ko8iuo3
         UhD4BBBCfpnXHNe5SWa8b1RGuhwAge7i114nqPZ4T/O8XRMQXQDL10GwT90/fMhC9X//
         Lb5w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PubJwy4DHwNuAJMupYQ6HUQzXAOXtpqumDEuIDos+DVm6BBvMweX
	BBnGl7kPbFMv/qpUZdoWnDY=
X-Google-Smtp-Source: APiQypLBvf69oGzdj7614pwqox2BxZ+F0QuRCxVKrX5Cj0Q//FCMhovZFXvyPWIXFDpGLUfkFxZAqg==
X-Received: by 2002:a37:7c7:: with SMTP id 190mr30354086qkh.477.1588108532504;
        Tue, 28 Apr 2020 14:15:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:434f:: with SMTP id q15ls8053103qvs.4.gmail; Tue, 28 Apr
 2020 14:15:32 -0700 (PDT)
X-Received: by 2002:ad4:45f0:: with SMTP id q16mr30661469qvu.89.1588108531916;
        Tue, 28 Apr 2020 14:15:31 -0700 (PDT)
Date: Tue, 28 Apr 2020 14:15:31 -0700 (PDT)
From: Gionatan Danti <gionatan.danti@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a0f1cad1-e867-4725-b0a9-32e530e019c5@googlegroups.com>
In-Reply-To: <67349dca-9647-4dbd-affc-ded6e8f01ee9@googlegroups.com>
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
 <67349dca-9647-4dbd-affc-ded6e8f01ee9@googlegroups.com>
Subject: Re: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_502_754116347.1588108531252"
X-Original-Sender: gionatan.danti@gmail.com
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

------=_Part_502_754116347.1588108531252
Content-Type: multipart/alternative; 
	boundary="----=_Part_503_1600813073.1588108531252"

------=_Part_503_1600813073.1588108531252
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



Il giorno marted=C3=AC 21 aprile 2020 22:30:44 UTC+2, Gionatan Danti ha scr=
itto:
>
>
> Il giorno marted=C3=AC 21 aprile 2020 20:44:22 UTC+2, The Lee-Man ha scri=
tto:
>>
>>
>> Because of the design of iSCSI, there is no way for the initiator to kno=
w=20
>> the server has gone away. The only time an initiator might figure this o=
ut=20
>> is when it tries to communicate with the target.
>>
>> This assumes we are not using some sort of directory service, like iSNS,=
=20
>> which can send asynchronous notifications. But even then, the iSNS serve=
r=20
>> would have to somehow know that the target went down. If the target=20
>> crashed, that might be difficult to ascertain.
>>
>> So in the absence of some asynchronous notification, the initiator only=
=20
>> knows the target is not responding if it tries to talk to that target.
>>
>> Normally iscsid defaults to sending periodic NO-OPs to the target every =
5=20
>> seconds. So if the target goes away, the initiator usually notices, even=
 if=20
>> no regular I/O is occurring.
>>
>
> True.
> =20
>
>>
>> But this is where the error recovery gets tricky, because iscsi tries to=
=20
>> handle "lossy" connections. What if the server will be right back? Maybe=
=20
>> it's rebooting? Maybe the cable will be plugged back in? So iscsi keeps=
=20
>> trying to reconnect. As a matter of fact, if you stop iscsid and restart=
=20
>> it, it sees the failed connection and retries it -- forever, by default.=
 I=20
>> actually added a configuration parameter called reopen_max, that can lim=
it=20
>> the number of retries. But there was pushback on changing the default va=
lue=20
>> from 0, which is "retry forever".
>>
>> So what exactly do you think the system should do when a connection "goe=
s=20
>> away"? How long does it have to be gone to be considered gone for good? =
If=20
>> the target comes back "later" should it get the same disc name? Should w=
e=20
>> retry, and if so how much before we give up? I'm interested in your view=
s,=20
>> since it seems like a non-trivial problem to me.
>>
>
> Well, for short disconnections the re-try approach is surely the better=
=20
> one. But I naively assumed that a longer disconnection, as described by t=
he=20
> node.session.timeo.replacement_timeout parameter, would tear down the=20
> device with a corresponding udev event. Udev should have no problem=20
> assigning the device a sensible persistent name, right?
> =20
>
>>
>> So you're saying as soon as a bad connection is detected (perhaps by a=
=20
>> NOOP), the device should go away?=20
>>
>
> I would say that the device should go away not a the first NOOP failing,=
=20
> but when the replacement_timeout (or another sensible timeout) expires.
>
> This open the door to another question: from iscsid.conf=20
> <https://github.com/open-iscsi/open-iscsi/blob/master/etc/iscsid.conf#L99=
>=20
> and README=20
> <https://github.com/open-iscsi/open-iscsi/blob/master/README#L1476> files=
=20
> I (wrongly?) understand that replacement_timeout come into play only when=
=20
> the SCSI EH is running, while in the other cases different timeouts as=20
> node.session.err_timeo.lu_reset_timeout and=20
> node.session.err_timeo.tgt_reset_timeout should affect the=20
> (dis)connection. However, in all my tests, I only saw replacement_timeout=
 being=20
> honored, still I did not catch a single running instance of SCSI EH via t=
he=20
> proposed command iscsiadm -m session -P 3
>
> What I am missing?
> Thanks.
>

Hi all, any thoughts regarding the point above?
Thanks.=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/a0f1cad1-e867-4725-b0a9-32e530e019c5%40googlegroups.com.

------=_Part_503_1600813073.1588108531252
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>Il giorno marted=C3=AC 21 aprile 2020 22:30:44 UTC=
+2, Gionatan Danti ha scritto:<blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">=
<div dir=3D"ltr"><br>Il giorno marted=C3=AC 21 aprile 2020 20:44:22 UTC+2, =
The Lee-Man ha scritto:<blockquote class=3D"gmail_quote" style=3D"margin:0;=
margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr"><div><br></div><div>Because of the design of iSCSI, there is no way fo=
r the initiator to know the server has gone away. The only time an initiato=
r might figure this out is when it tries to communicate with the target.</d=
iv><div><br></div><div>This assumes we are not using some sort of directory=
 service, like iSNS, which can send asynchronous notifications. But even th=
en, the iSNS server would have to somehow know that the target went down. I=
f the target crashed, that might be difficult to ascertain.</div><div><br><=
/div><div>So in the absence of some asynchronous notification, the initiato=
r only knows the target is not responding if it tries to talk to that targe=
t.</div><div><br></div><div>Normally iscsid defaults to sending periodic NO=
-OPs to the target every 5 seconds. So if the target goes away, the initiat=
or usually notices, even if no regular I/O is occurring.</div></div></block=
quote><div><br></div><div>True.</div><div>=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>But this is where t=
he error recovery gets tricky, because iscsi tries to handle &quot;lossy&qu=
ot; connections. What if the server will be right back? Maybe it&#39;s rebo=
oting? Maybe the cable will be plugged back in? So iscsi keeps trying to re=
connect. As a matter of fact, if you stop iscsid and restart it, it sees th=
e failed connection and retries it -- forever, by default. I actually added=
 a configuration parameter called reopen_max, that can limit the number of =
retries. But there was pushback on changing the default value from 0, which=
 is &quot;retry forever&quot;.</div><div><br></div><div>So what exactly do =
you think the system should do when a connection &quot;goes away&quot;? How=
 long does it have to be gone to be considered gone for good? If the target=
 comes back &quot;later&quot; should it get the same disc name? Should we r=
etry, and if so how much before we give up? I&#39;m interested in your view=
s, since it seems like a non-trivial problem to me.</div></div></blockquote=
><div><br></div><div>Well, for short disconnections the re-try approach is =
surely the better one. But I naively assumed that a longer disconnection, a=
s described by the=C2=A0<span style=3D"color:rgb(36,41,46);font-size:12px;w=
hite-space:pre"><font face=3D"courier new, monospace">node.session.timeo.<w=
br>replacement_timeout</font></span><span style=3D"color:rgb(36,41,46);font=
-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace=
;font-size:12px;white-space:pre"> </span>parameter, would tear down the dev=
ice with a corresponding udev event. Udev should have no problem assigning =
the device a sensible persistent name, right?</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>So yo=
u&#39;re saying as soon as a bad connection is detected (perhaps by a NOOP)=
, the device should go away? <br></div></div></blockquote><div><br></div><d=
iv>I would say that the device should go away not a the first NOOP failing,=
 but when the <font face=3D"courier new, monospace">replacement_timeout </f=
ont>(or another sensible timeout) expires.</div><div><br></div><div>This op=
en the door to another question: from <a href=3D"https://github.com/open-is=
csi/open-iscsi/blob/master/etc/iscsid.conf#L99" target=3D"_blank" rel=3D"no=
follow" onmousedown=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhtt=
ps%3A%2F%2Fgithub.com%2Fopen-iscsi%2Fopen-iscsi%2Fblob%2Fmaster%2Fetc%2Fisc=
sid.conf%23L99\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGqG3qw6I9PYjDd3292Yx=
JmRBSxXQ&#39;;return true;" onclick=3D"this.href=3D&#39;https://www.google.=
com/url?q\x3dhttps%3A%2F%2Fgithub.com%2Fopen-iscsi%2Fopen-iscsi%2Fblob%2Fma=
ster%2Fetc%2Fiscsid.conf%23L99\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGqG3=
qw6I9PYjDd3292YxJmRBSxXQ&#39;;return true;">iscsid.conf</a> and <a href=3D"=
https://github.com/open-iscsi/open-iscsi/blob/master/README#L1476" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://www.go=
ogle.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2Fopen-iscsi%2Fopen-iscsi%2Fblob=
%2Fmaster%2FREADME%23L1476\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG9yQiwvp=
mQgRHC7PeH9CV5Oi9nsA&#39;;return true;" onclick=3D"this.href=3D&#39;https:/=
/www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2Fopen-iscsi%2Fopen-iscsi=
%2Fblob%2Fmaster%2FREADME%23L1476\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG=
9yQiwvpmQgRHC7PeH9CV5Oi9nsA&#39;;return true;">README</a>=C2=A0files I (wro=
ngly?) understand that <font face=3D"courier new, monospace">replacement_ti=
meout </font>come into play only when the SCSI EH is running, while in the =
other cases different timeouts as=C2=A0<font face=3D"courier new, monospace=
">node.session.err_timeo.lu_<wbr>reset_timeout</font><span style=3D"color:r=
gb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot=
;,Menlo,monospace;font-size:12px;white-space:pre">=C2=A0</span>and <font fa=
ce=3D"courier new, monospace">node.session.err_timeo.tgt_<wbr>reset_timeout=
=C2=A0</font>should affect the (dis)connection. However, in all my tests, I=
 only saw=C2=A0<span style=3D"font-family:&quot;courier new&quot;,monospace=
">replacement_timeout=C2=A0</span>being honored, still I did not catch a si=
ngle running instance of SCSI EH via the proposed command=C2=A0<span style=
=3D"color:rgb(36,41,46);font-size:12px;white-space:pre"><font face=3D"couri=
er new, monospace">iscsiadm -m session -P 3</font></span></div><div><span s=
tyle=3D"color:rgb(36,41,46);font-size:12px;white-space:pre"><font face=3D"c=
ourier new, monospace"><br></font></span></div><div><span style=3D"color:rg=
b(36,41,46);font-size:12px;white-space:pre"><font face=3D"arial, sans-serif=
">What I am missing?</font></span></div><div><span style=3D"color:rgb(36,41=
,46);font-size:12px;white-space:pre"><font face=3D"arial, sans-serif">Thank=
s.</font></span></div></div></blockquote><div><br></div><div>Hi all, any th=
oughts regarding the point above?</div><div>Thanks.=C2=A0</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a0f1cad1-e867-4725-b0a9-32e530e019c5%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/a0f1cad1-e867-4725-b0a9-32e530e019c5%40googlegroups.com</a>.<b=
r />

------=_Part_503_1600813073.1588108531252--

------=_Part_502_754116347.1588108531252--
