Return-Path: <open-iscsi+bncBC6MFJWO34DBBNXGR7XAKGQEUOWCDSQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F524F2C92
	for <lists+open-iscsi@lfdr.de>; Thu,  7 Nov 2019 11:34:31 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id 92sf743225wro.14
        for <lists+open-iscsi@lfdr.de>; Thu, 07 Nov 2019 02:34:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573122870; cv=pass;
        d=google.com; s=arc-20160816;
        b=aiEx8x/8trq0CDZx47pFDcbrr96dW81R2dvPqIIej+P485ErXI05Zg0NeTun39oynN
         gzh13SXVwSCxeqbyhaumProGo1veE7ncJWfp4EzEhjogMF89KQKsNLAmfTV5uZ5WAAcD
         SNhxn4XsqVcU31YufWNORSy0StcxD5gamh1EB+mvl33K7H7aKl4w/wthArQju+rShoXU
         p3M0U0w5gRjlDhJNabeXTzYov2CZ+oBOFm5ycJCNa2nj+E+IjnWjgBr1d10eaVUXWSaN
         eM4ZJ26BwV9CA38D4Ad8P92uaooe3Bp1HDQRYqrwmeZ8zXOU79YgA2hlTv/w6T9yIU1b
         GyxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :content-transfer-encoding:mime-version:in-reply-to:references
         :subject:to:from:date:message-id:sender:dkim-signature;
        bh=XfsaC+tCezAxbuwJH5P/DncFW4azreh22yppfUZFkCM=;
        b=mJkSPxLxojnYrjTPmdqQNFTS7St4JKakG/xDBFDxdagM9kuojIacI6K8jenOu2Z6nd
         zigJHDXXrHj+c7FpJ1IivQu5rENqQUUmf8BURV3swOtrx2BWynSZrKKjuRjbVl60IQwg
         n/B3Fs8PeiruF20g6BnAU5OqMLBsYO+pA55LSoLYtX71kkwIfjGVKP6BfTTV9BgpiHw/
         8PWVTzEudobtzmJk4rq02GLj/4BH0VoIBdu8w+aKwNGUzPyj7oe1ntDnBI5Q2yBbmcQt
         jD0eKGwM4DEUjWZ23JzQV3vTJrZw5K9n3tm35x2NNfBA6Sx7btrRIR9Tf90MnSUUxNoG
         HrYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-transfer-encoding:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XfsaC+tCezAxbuwJH5P/DncFW4azreh22yppfUZFkCM=;
        b=fk80qXoNSTLKM2DX/p7ZAQ3M9+sjK4Pe8WwOfqNWBreXCfzBgNybX/D5zyrS60/+xG
         8hPeVBBRbiaIVMOaC0RvKfzb6lR3UChs/LNtcmxLumiX14SW7jnfzrA0qou0apZaoi5g
         JVmeSNr4Fkgh1wpUbyjAzyWl4YxB/VFc5cSldvsIw/F+oScHHQDkpjvFn3QgCGpYJboQ
         czSOEFHGIGy/s/YZlPiLsEol1GqH/2yYNleep55Jq8QE5LNFEn/nBREvGARmPXxWjVfx
         /RVlHMLX9eijYy3g3JDJLnm1RKVI4V2Tc0L9lkxGpl0OG9yU0KQi3Jbydfck2ncc0mKB
         f/Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XfsaC+tCezAxbuwJH5P/DncFW4azreh22yppfUZFkCM=;
        b=R7vfAc2FJCkWjHHJ8PV/mjRTZMGvyEjpqUxV2ZdWYiAroisBS6eHaA58YW482qx1ok
         yufj2ZpLlxaG+PKuQR1p4bi9xQOFBx4JQztXfUP64CFk2jnnryZ2DAwmH3bUrGKn+2UW
         MiaKVGGRl468xkXRqpTInjZwohIWWI4y0bdLJWmNNx46fI98hBdTc06kUT7LShuP2DYl
         JSSUCrA/sNfFXjhAzCkH2tsb5T4MiduoIxi5IDtEmRhNr3AZZ+GVMob7ffjmVFixG+w6
         sg+4dMczbpSCqwD9Q+1lfNf3rcOgd+AnprAHUAOXTSANWVAUBDOeW77m8SydYIu5re/I
         rmIQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVSXda/ExGKIJATOeBTKCvqzxd+DrRP4Q2rQ2mmjc29niTmDDR8
	ydUP5Stm2tH1KZPiCn97wFA=
X-Google-Smtp-Source: APXvYqzXsS9f4955gcHuEP/X2Tnp2pManv7wYLZcANDyjIpdqa9p8jjR2a6kdO/vuH0aq7plN1JdEQ==
X-Received: by 2002:a1c:9ccd:: with SMTP id f196mr2173909wme.152.1573122870743;
        Thu, 07 Nov 2019 02:34:30 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:f74c:: with SMTP id z12ls1195089wrp.10.gmail; Thu, 07
 Nov 2019 02:34:30 -0800 (PST)
X-Received: by 2002:a05:6000:343:: with SMTP id e3mr2252608wre.20.1573122870252;
        Thu, 07 Nov 2019 02:34:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573122870; cv=none;
        d=google.com; s=arc-20160816;
        b=rP95L1Oq8dS8m6ysMJZzIk3c1XyA6i66IuZBb2OF563wSYoQ6cgcXZ09AL5/97H/8R
         fKa4LNhwsgBVJkztc13/KJi0rtme8P101WOIbQ6WkcGTKnVmWrCob4kNaizwfuzhTMd8
         82b9nVhTRszwCD6RPnWlDOthF0LO6T+ESDhNVJNlikrqQNOWSEeNqHU33c8naHI3pVuS
         hOYSqkCg0tE2WqJKNw1EPrYfVwd99p3LI01saZLFIGmR16Z0lGziao81N3YCUcbBLO21
         Yc0N89kyNQWNX8ATIhikQlwzkFUTVvcy7aOCZXN9UOheC5obEnJ7wRTfabhpD1yLC5GD
         +85g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=EktkynLRkJ+WGoRpeRQyPWZB/KUEwdBQPLz1+O95QD8=;
        b=c436K9oUMAVwCbbyZHTiiQhstABL1bpYeRWSYkiHCzwibmD/ciZvJgYanwFZP3+miA
         cfE6OIW69+ave8qFa9Tyn0JTzxnq4LdGHOIl1YPP+zmDrM7DNJlEM7qPWSN4tLDOV5rE
         8GvvLmCmhliMQ1N8iprCU1pTH++wj9OmSd3cFW85gSHLTHWcSoAZmW7E6oKrQlvyR03K
         UaLrrhpmmE68AMHmnzFM+zSV2dHVAtFhtmDyWfmX3VtagptUo+tmUGHkB5rCY+FJ1/eO
         B9yHmiqAhTVE2DnfrquXJ+j8ZoboE/eUv7x38z9CLFpsahmW98B1y4c2W0opb2yLL1qc
         2DnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [194.94.157.146])
        by gmr-mx.google.com with ESMTPS id y140si118325wmd.0.2019.11.07.02.34.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 02:34:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) client-ip=194.94.157.146;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 478206000058
	for <open-iscsi@googlegroups.com>; Thu,  7 Nov 2019 11:34:29 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id 13F60600004D
	for <open-iscsi@googlegroups.com>; Thu,  7 Nov 2019 11:34:29 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 07 Nov 2019 11:34:29 +0100
Message-Id: <5DC3F334020000A100034E56@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.0
Date: Thu, 07 Nov 2019 11:34:28 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: Re: iSCSI packet generator
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
 <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com>
 <0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>
In-Reply-To: <0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

Hi!

Just a note of curiosity: Several years ago I wanted to test some RAID conf=
igurations, but had no server with enough disks. However the server had a l=
ot of RAM (by that time). So I ended with creating a few small ramdisks whi=
ch I exported as iSCSI devices. The host was happy with those "disks".
In the meantime the devicemapper can even inject "I/O errors", so maybe you=
 can build a useful scenario for some basic tests. Like this:
---
DEV=3Dbad_disk
dmsetup create "$DEV" <<EOF
0 8 zero
8 1 error
9 7 zero
16 1 error
17 255 zero
EOF
---

Regards,
Ulrich

>>> Bobby <italienisch1987@gmail.com> schrieb am 06.11.2019 um 22:49 in Nac=
hricht
<0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>:

> Hi Donald,
> Hi The Lee-man,
>=20
> Thanks for the reply. Both replies were helpful and both replies actually=
=20
> clarified my concepts. And I realized, the question was not clear....You=
=20
> were kind enough to reply in detail even when the question of was not cle=
ar=20
> !
>=20
> *The Lee-man*, your guess was right. I was thinking something like that a=
nd=20
> I realized it makes no sense.
>=20
> *Donald*: Yes, you are right. I took this point of yous "*then doing norm=
al=20
> I/O to that iSCSI disk will provide all the traffic you will typically=20
> need*"....the=20
> wireshark showed me !=20
>=20
> I'm a novice in Open-iSCSI yet very much interested in it. Please excuse =
my=20
> simple questions. It is written, Open-iSCSI acts as "*kernel driver*"=20
> between "*block layer*" and "*network layer*". Therefore following two=20
> questions:
>=20
> - Linux block layer perform IO scheduling IO submissions to storage devic=
e=20
> driver. If there is a physical device, the block layer interacts with it=
=20
> through SCSI mid layer and SCSI low level drivers. So, how *actually* a=
=20
> software initiator (*Open-iSCSI*) interacts with "*block layer*"?  I will=
=20
> be really grateful if you can explain me.=20
>=20
> - What confuses me, where does the "*disk driver*" comes into play?
>=20
> Thanks :-)
>=20
>=20
> On Monday, November 4, 2019 at 5:43:24 PM UTC+1, The Lee-Man wrote:
>>
>> On Monday, November 4, 2019 at 2:49:08 AM UTC-8, Bobby wrote:
>>>
>>> Hi
>>>
>>> I have two virtual machines. One is a client and other is a sever (SAN)=
.=20
>>> I am using Wireshark to  analyze the iSCSI protocols between them.
>>>
>>> Someone recommended me, in addition to a packet analyzer, I can also us=
e=20
>>> a packet generator. Any good packet generator for iSCSI client/server m=
odel?
>>>
>>> Thanks
>>>
>>
>> Your question is not clear, but I'm *guessing*  you are asking if you ca=
n=20
>> use some sort of software to inject iSCSI packets into your client/serve=
r=20
>> stream, e.g. so that you can simulate errors and see how your software=
=20
>> handles them?
>>
>> If so, then the answer is no, there is nothing I know of.
>>
>> Such "bad command injection" can be done with fancy hardware analyzers. =
A=20
>> good (expensive) network analyzer can (I believe) inject bad packets of =
any=20
>> type.See https://www.firewalltechnical.com/packet-injection-tools/=20
>>
>> It sound like none of this is directly related to open-iscsi, though.
>>
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/open-iscsi/0c2592cf-ad61-4fe4-8006-63ed=
abe4=20
> af7f%40googlegroups.com.




--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/5DC3F334020000A100034E56%40gwsmtp.uni-regensburg.de.
