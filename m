Return-Path: <open-iscsi+bncBCLI32UIRUJRBD5C7T4AKGQEFE5D5AA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F27FE22F6CE
	for <lists+open-iscsi@lfdr.de>; Mon, 27 Jul 2020 19:38:24 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id g18sf1426505otj.12
        for <lists+open-iscsi@lfdr.de>; Mon, 27 Jul 2020 10:38:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595871503; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCvQ1mI9qzgY2rJNTWrZUHcQzbdpSFKdpZ+9qOehDVnQli7wHmpscFmnjkB1zF5DzY
         dPW5c0XinlLlAhOH2P6RtoD1AMT0ACcbhauKuHXwBrp0Cgtsb2tbNkE2a9AJ250jZ93x
         rt8zJdnBeQVNONCNKWC1i8vmH9WoeK6rphoEOredVK45EQsYFnMVgLXwMqxVNEQiqRdL
         O2AGjJPhRcKYTd+F3RzTC7EsH0RzXfBwO5VX4Cf5+e9b6RNuCLot9RfjCvg9Dix76cuA
         dLVF2MxADJlPN4MI1TELc41lmzVi3MDypXkgEcCYKbEWlUkcMtUiytwHzUMxgFDwOR6y
         oF6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :references:in-reply-to:message-id:to:from:date:sender
         :dkim-signature;
        bh=7o6vzQIHyatcVc7ZqokqshmeK7BQi9QKc/BuL+pHIPM=;
        b=hmMN0hYwCsnv/2EpX/AhkJh2MFSI6HC8gepY+V88II1dPrNxP6QixiRPpWs4NTtpMH
         psiiHUK+SvpscSXjziR5VZcHFg8CkAGaNPWk0WjaI38LPnDHtnE5Bw1nifUolEB58buS
         NFJ5poqZATIIJUNjo5ktg6HPLZ1idphNPVDVu6J+6lxL1ZTAOdBmM4ht1aX6zqTTB9TU
         GUtxA0dQtRF+l9Ig4I1pSqnDkMBvLSs5y4CZqxhJy19IOQO/qEmAQaEKBrIMXPuTR7vm
         Y43l9tIdcunVFjbvES/qUvFlKG+vJ9bCJvrTczG3w0KUmcMgfzgG7dvyWeqk756L+buk
         r97g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Drdg7ssl;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7o6vzQIHyatcVc7ZqokqshmeK7BQi9QKc/BuL+pHIPM=;
        b=agzQKi7gWOoOOsMWu4LlmsYihJD1Cc5qPFxmXWVysurGyYTV9ef8XVXv+8OP3xYaT6
         6yhlkMJJZPLrsEVCQKngCqsFlwennIZOiqVbX4JldOwRajV0GpZ3n5jJUM4zi5mHDUn9
         J7N13+U07SNMbjR3HVOs2zSk09zITkBTwfsvXHr9t5GWWAm11rScmwS8AMHp40c0qWG7
         7KlCs5D2XEVQqsS5XuWaw+qQZFULZrRPEl9e95VwIgpcfXrdmJnC868fEEK7COYxm6ym
         zeljifxAH9k5U+/WD496zgb1oImEjpVQcq08AwUpgehxe6Rwlcv7lT4Oqp93daPqc9ls
         /HRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7o6vzQIHyatcVc7ZqokqshmeK7BQi9QKc/BuL+pHIPM=;
        b=obx0MZDMGb+6j9bPpoGH0mdjt78AC18aDLAdOIvV7k4u9TK+9tjuY7SIf06H4zgIVv
         Sst13AsSi+Jzrfl+tVVMQ6Ij5+M0qaIVNkHuvtX83s2QA9LxSyJUPFcU6xcaYBc5udrV
         cAJXPoxqpJ7ZjRnhx3SlPVRV6CUhedaSlLm98V/EH5ZboCGT7fylMnuWygz3Uf9BVWTS
         qS9XlGm5f1YFiN0/QLRbgUbzye9pLuR8eVyqCKI9wmBrg3dilct+0yifvunowJ1re3tX
         OVkZooADaZaNtOymoUlWwXKqKu2NoBue5IonFDws36xGlvDn5jsZDKzJsY4Q6UaytwZj
         TWiw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533VfvY2ZbOCBqxGSD23m+aSPC7ImTY3jUVLQ0BI6TSE3OYII9sR
	vksavehzgLQPuHeTfh/mQx8=
X-Google-Smtp-Source: ABdhPJxMGaC2mytA/WJVECFJT58G2De7nRWypcgZsME/tAFfu0CJ7BWpE4mPeI/+Bkaki/JWYOtFkQ==
X-Received: by 2002:aca:b488:: with SMTP id d130mr381928oif.32.1595871503570;
        Mon, 27 Jul 2020 10:38:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:4d14:: with SMTP id n20ls3525184otf.4.gmail; Mon, 27 Jul
 2020 10:38:23 -0700 (PDT)
X-Received: by 2002:a05:6830:2405:: with SMTP id j5mr21268775ots.340.1595871503180;
        Mon, 27 Jul 2020 10:38:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595871503; cv=none;
        d=google.com; s=arc-20160816;
        b=nYDZjW0aGMVbaWegpry2RV6yCry2pDoetkTcXu5kAqOF1PUZIPVzesCwedWBfx2BQq
         sw3STOS60inoe5HSxRyPgNmXqvg+CFqWT+PD9aCAqQwAgZ1jDMnq/Kox3UGqpsCVb6Wz
         7CBersQ3qi5rPir/pq7KhbMVLEWrb0WN8raZ/kNYtzkCSW+Y+6SLWEy7Kp5n1SwzbeKJ
         hF3OnoEiZWt4AQi4eoghOsMkkzDNL+TwF/t76TrR2HaIO9Or24hwkBsfHHO2xo24WRay
         VTvp4cbxhEQMPHQIChU886Y0Fmx4J9ILu92PWsWCM8mcyIlFBsaf7zYLATuxHVw2lc7E
         mWzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=1zsH8uf2cGQJbFvSsR3a9rZbbgFCD/UiHcxTZfzFmIA=;
        b=kSlXul6oF7XWG117y7sv3t40nH9dtA6TfqOxZGV/90C1arOb+Y3C2JBHMRgJJCbn6L
         FPclZ6XVD85+Id3yGwxY4pUD8TSz9M3xtyvRpQLnd2G6i1x7AH34LW7lI7WR+keyW836
         OHY6G3SaQQUpvs/m51C82S8BgQOU2PgItERxzsEyZ1g8lFAeWJTjdv7bU3aStSiu+BwO
         2qoC+9EbGglJZg4ET1KwDGSQYUfNwPIjzFV9w7BxoSReORiHeZeRo6x/jYCmKEtBMmEq
         JCf5NDvn6BPg2HKqcwhZv55ffuhMwC+bTe9MmCK20q2rsJdOaEXzkYGcCS1n0CWndGbi
         /HbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Drdg7ssl;
       spf=pass (google.com: domain of abawer@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id m21si586420oih.4.2020.07.27.10.38.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 10:38:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of abawer@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-1p8PmLbYOeieuRy6w5aXdA-1; Mon, 27 Jul 2020 13:38:07 -0400
X-MC-Unique: 1p8PmLbYOeieuRy6w5aXdA-1
Received: by mail-oo1-f71.google.com with SMTP id x194so7174444ooa.20
        for <open-iscsi@googlegroups.com>; Mon, 27 Jul 2020 10:38:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1db5:: with SMTP id z21mr21585687oti.162.1595871486194;
        Mon, 27 Jul 2020 10:38:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1db5:: with SMTP id z21mr21585668oti.162.1595871485722;
        Mon, 27 Jul 2020 10:38:05 -0700 (PDT)
Date: Mon, 27 Jul 2020 10:38:04 -0700 (PDT)
From: Amit Bawer <abawer@redhat.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
In-Reply-To: <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_792_447066361.1595871484733"
X-Original-Sender: abawer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Drdg7ssl;
       spf=pass (google.com: domain of abawer@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=abawer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

------=_Part_792_447066361.1595871484733
Content-Type: multipart/alternative; 
	boundary="----=_Part_793_1506113300.1595871484733"

------=_Part_793_1506113300.1595871484733
Content-Type: text/plain; charset="UTF-8"

Thank you for your answers,

The motivation behind the original question is for reducing the waiting 
time for different iscsi connections logins
in case some of the portals are down.

We have a limitation on our RHEV system where all logins to listed iscsi 
targets should finish within 180 seconds in total.
In our current implementation we serialize the iscsiadm node logins one 
after the other,
each is for specific target and portal. In such scheme, each login would 
wait 120 seconds in case a portal is down
(default 15 seconds login timeout * 8 login retries), so if we have 2 or 
more connections down, we spend at least 240 seconds
which exceeds our 180 seconds time limit and the entire operation is 
considered to be failed (RHEV-wise).

Testing [1] different login schemes is summarized in the following table 
(logins to 2 targets with 2 portals each).
It seems that either login-all nodes after creating them, as suggested in 
previous answer here, compares in  total time spent 
with doing specific node logins concurrently (i.e. running iscsiadm -m node 
-T target -p portal -I interface  -l in parallel per
each target-portal), for both cases of all portals being online and when 
one portal is down:

Login scheme                         Online  Portals             Active 
Sessions       Total Login Time (seconds)
---------------------------------------------------------------------------------------------------------------------------------------------------------
    All at once                            
2/2                                 4                               2.1
    All at once                            1/2                             
    2                               120.2
    Serial target-portal              2/2                                
4                                8.5
    Serial target-portal              1/2                                
2                                243.5
    Concurrent target-portal     2/2                               
4                                2.1
    Concurrent target-portal    1/2                                
2                               120.1

Using concurrent target-portal logins seems to be preferable in our 
perspective as it allows to connect only to the
specified target and portals without the risk of intermixing with other 
potential iscsi targets.

The node creation part is kept serial in all tests here and we have seen it 
may result in the iscsi DB issues if run in parallel.
But using only node logins in parallel doesn't seems to have issues for at 
least 1000 tries of out tests.

The question to be asked here is it advisable by open-iscsi?
I know I have been answered already that iscsiadm is racy, but does it 
applies to node logins as well?

The other option is to use one login-all call without parallelism, but that 
would have other implications on our system to consider.

Your answers would be helpful once again.

Thanks,
- Amit

[1] https://gerrit.ovirt.org/#/c/110432






On Tuesday, June 30, 2020 at 8:02:15 PM UTC+3 The Lee-Man wrote:

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
>> On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer <aba...@redhat.com> wrote:
>>
> [Sorry if this message is duplicated, haven't seen it is published in the 
>>> group]
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
>>>
>> To unsubscribe from this group and stop receiving emails from it, send an 
>>> email to open-iscsi+unsubscribe@googlegroups.com.
>>
>>
>>> To view this discussion on the web visit 
>>> https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com 
>>> <https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com?utm_medium=email&utm_source=footer>
>>> .
>>>
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0aed6f01-5c36-46db-af27-5b6c353fd7b0n%40googlegroups.com.

------=_Part_793_1506113300.1595871484733
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Thank you for your answers,</div><div><br></div><div>The motivation be=
hind the original question is for reducing the waiting time for different i=
scsi connections logins</div><div>in case some of the portals are down.<br>=
<br>We have a limitation on our RHEV system where all logins to listed iscs=
i targets should finish within 180 seconds in total.<br></div><div>In our c=
urrent implementation we serialize the iscsiadm node logins one after the o=
ther,</div><div>each is for specific target and portal. In such scheme, eac=
h login would wait 120 seconds in case a portal is down</div><div>(default =
15 seconds login timeout * 8 login retries), so if we have 2 or more connec=
tions down, we spend at least 240 seconds</div><div>which exceeds our 180 s=
econds time limit and the entire operation is considered to be failed (RHEV=
-wise).<br></div><div><br></div><div>Testing [1] different login schemes is=
 summarized in the following table (logins to 2 targets with 2 portals each=
).</div><div>It seems that either login-all nodes after creating them, as s=
uggested in previous answer here, compares in&nbsp; total time spent <br></=
div><div>with doing specific node logins concurrently (i.e. running iscsiad=
m -m node -T target -p portal -I interface&nbsp; -l in parallel per</div><d=
iv>each target-portal), for both cases of all portals being online and when=
 one portal is down:<br></div><div><br></div><div>Login scheme &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online&nbsp; Portals &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Active Ses=
sions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Login Time (seconds)<br>--------=
---------------------------------------------------------------------------=
----------------------------------------------------------------------<br>&=
nbsp;&nbsp;&nbsp; All at once&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.1<br>&nbsp;&nbsp;&nbsp; All =
at once&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
1/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 120.2<br>&nbsp;&nbsp;&nbsp; Serial target-portal&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2/2&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8.=
5<br>&nbsp;&nbsp;&nbsp; Serial target-portal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1/2&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 243.5<br>&nbsp;&nbsp;&nb=
sp; Concurrent target-portal&nbsp;&nbsp;&nbsp;&nbsp; 2/2&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.1<br>&nbsp;&nbsp;&nbsp;=
 Concurrent target-portal&nbsp;&nbsp;&nbsp; 1/2&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120.1<br><br></div><div>Using conc=
urrent target-portal logins seems to be preferable in our perspective as it=
 allows to connect only to the</div><div>specified target and portals witho=
ut the risk of intermixing with other potential iscsi targets.</div><div><b=
r></div><div>The node creation part is kept serial in all tests here and we=
 have seen it may result in the iscsi DB issues if run in parallel.</div><d=
iv>But using only node logins in parallel doesn't seems to have issues for =
at least 1000 tries of out tests.</div><div><br></div><div>The question to =
be asked here is it advisable by open-iscsi?</div><div> I know I have been =
answered already that iscsiadm is racy, but does it applies to node logins =
as well?</div><div><br></div><div>The other option is to use one login-all =
call without parallelism, but that would have other implications on our sys=
tem to consider.<br><br>Your answers would be helpful once again.</div><div=
><br>Thanks,<br>- Amit</div><div><br></div><div>[1] https://gerrit.ovirt.or=
g/#/c/110432</div><div><br></div><div><br></div><div><br></div><div><br></d=
iv><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D=
"gmail_attr">On Tuesday, June 30, 2020 at 8:02:15 PM UTC+3 The Lee-Man wrot=
e:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex=
; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div dir=
=3D"ltr">On Tuesday, June 30, 2020 at 8:55:13 AM UTC-7, Donald Williams wro=
te:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello,<div>=C2=
=A0</div><div>=C2=A0Assuming that devmapper is running and MPIO properly co=
nfigured you want to connect to the same volume/target from different inter=
faces.=C2=A0</div><div><br></div><div>However in your case you aren&#39;t s=
pecifying=C2=A0the same interface. &quot;default&quot;=C2=A0 but they are o=
n the same subnet.=C2=A0 Which typically will only use the default NIC for =
that subnet.=C2=A0</div></div></blockquote><div><br></div></div><div dir=3D=
"ltr"><div>Yes, generally best practices require that each component of you=
r two paths between initiator and target are redundant. This means that, in=
 the case of networking, you want to be on different subnets, served by dif=
ferent switches. You also want two different NICs on your initiator, if pos=
sible, although many times they are on the same card. But, obviously, some =
points are not redundant (like your initiator or target). <br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:=
1px #ccc solid;padding-left:1ex"></blockquote></div><div dir=3D"ltr"><block=
quote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>What=
 iSCSI target are you using?=C2=A0=C2=A0</div><div><br></div><div>=C2=A0Reg=
ards,</div><div>Don</div></div><br></blockquote></div><div dir=3D"ltr"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer &lt;<a href rel=3D"nofollow=
" data-email-masked>aba...@redhat.com</a>&gt; wrote:<br></div></div></block=
quote></div><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
><div><span></span></div></div><span><span><span><span><span><span><span><s=
pan><div><span>[Sorry if this message is duplicated, haven&#39;t seen it is=
 published in the group]</span></div><div><span><br><span dir=3D"ltr"></spa=
n> </span></div></span></span></span></span></span></span></span></span><sp=
an><span><span><span><span><span><span><span><div><span></span></div></span=
></span></span></span></span></span></span></span><div><div><div><div dir=
=3D"ltr"><div>Hi,</div><div><br></div><div>Have couple of question regardin=
g iscsiadm version 6.2.0.878-2:</div><div><br></div><div>1) Is it safe to h=
ave concurrent logins to the same target from different interfaces? <br></d=
iv><div>That is, running the following commands in parallel:</div><div><br>=
</div><div>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p=
 <a href=3D"http://10.35.18.121:3260" rel=3D"nofollow" target=3D"_blank" da=
ta-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.=
35.18.121:3260&amp;source=3Dgmail&amp;ust=3D1595955967706000&amp;usg=3DAFQj=
CNEKE0lj-FW5hPjr5nCerdrqmUkKNw">10.35.18.121:3260</a>,1 -l</div><div>iscsia=
dm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http:=
//10.35.18.166:3260" rel=3D"nofollow" target=3D"_blank" data-saferedirectur=
l=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://10.35.18.166:3260&am=
p;source=3Dgmail&amp;ust=3D1595955967706000&amp;usg=3DAFQjCNFCXYSbEBL4A7sYC=
7L3WQbMDoPMrA">10.35.18.166:3260</a>,1 -l</div><div><br></div><div>2) Is th=
ere a particular reason for the default values of=C2=A0 node.conn[0].timeo.=
login_<span></span>timeout and node.session.initial_login_<span></span>retr=
y_max?</div><div>According to comment in iscsid.conf it would spend 120 sec=
onds in case of an unreachable interface login:</div><div><br></div><div># =
The default node.session.initial_login_<span></span>retry_max is 8 and<br>#=
 node.conn[0].timeo.login_<span></span>timeout is 15 so we have:<br>#<br># =
node.conn[0].timeo.login_<span></span>timeout * node.session.initial_login_=
<span></span>retry_max =3D<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 120 seconds<br></div><div><br></div><div><br></=
div><div>Thanks,</div><div> Amit</div></div></div></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br></blockquote></div></blockquote></div><div =
dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left=
:0.8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href rel=3D"nofollow" data-email-masked>open-iscsi+unsubscribe@g=
ooglegroups.com</a>.</blockquote></div></blockquote></div><div dir=3D"ltr">=
<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" rel=3D"nofollow" target=3D"=
_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3D=
https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da=
1e19bbn%2540googlegroups.com?utm_medium%3Demail%26utm_source%3Dfooter&amp;s=
ource=3Dgmail&amp;ust=3D1595955967707000&amp;usg=3DAFQjCNHdFQyVQQoDk8E9JFNy=
ZSl-JHpzNg">https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4=
-9e6f-93e8da1e19bbn%40googlegroups.com</a>.<br>
</blockquote></div></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0aed6f01-5c36-46db-af27-5b6c353fd7b0n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0aed6f01-5c36-46db-af27-5b6c353fd7b0n%40googlegroups.com</a>.=
<br />

------=_Part_793_1506113300.1595871484733--

------=_Part_792_447066361.1595871484733--

