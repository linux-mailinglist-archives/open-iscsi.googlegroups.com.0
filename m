Return-Path: <open-iscsi+bncBC6MFJWO34DBBK7QZGFQMGQE3DETGZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6444373BB
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Oct 2021 10:37:00 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id u21-20020a2e91d5000000b00210e16996e5sf1071028ljg.5
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Oct 2021 01:37:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634891819; cv=pass;
        d=google.com; s=arc-20160816;
        b=VsdWOOB2EttfxBeH8q1nM7Kchca8m3pPjJqbOv+DzDxJyPpd+uanfIr3N99xcg+qar
         lwamgmlAS7aCyLxmf4U/jDbaCYqgHgmPChr0mUGq/IcWmcg9JwPBTCD6nndftb20CYJh
         oY9x4U4sI16V7XvyPLb8lYY1Tze54qn3r2wVMDFY6C6v7KW6Eo0SvnVXr6p2D6TSFkUX
         laEBYgmc9GAzaQc4XDIUj6xrQjgti9OGoIhwy58K4tuGGjvzT1AeeTTxhBhz/xZ98POw
         RkUr3qYjBvAT2AbD3DWKG6A997b4d3wwMkIAICJwrnSMy5k1+IphhK4FQxLCvJABkSPS
         qd0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=/PbKZVu7JhG/U2M0cuX8vL5eM1kJuAOdtcrc7WqESG4=;
        b=WCfBkvPnVlxxrTHJXrCqwlAKpBSv4Ls/EGGnT4aeUk260VtWPbHKV2QfIwqvhJQJ9m
         IlX/Iy9KclFXNIDtStq4ys1M5Gff8GgKeQxqHNn8qfqqgInHMgojnyknW7sVJjF0QVMa
         rmL4PPa6bQ9JrsPD1JlJYo4QCp+j/ckYQHBZSYrL5HhFbL6CBOmII//QFEfrQrY3aPcV
         dnUTwYcFUVRvtCDDxpSj2WWdp21Q3OaFzEAhGsgREDAKL64q50Sb/5p5MqVU1FUBPTS9
         DbT39wKdv7cHw79xssuVElTXUHu8UqMhOIvWohHWA5svcLbxD0Nmj/M00JRn+oh5adeo
         428g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/PbKZVu7JhG/U2M0cuX8vL5eM1kJuAOdtcrc7WqESG4=;
        b=hI5GtsEkjpx80v1zRJ8x2ACTYCRJO+Xs97/FMC8k33609GLKcU+jEfl6pRGB0myi3b
         xVtTLIAjLpw9IZvWNXkl0p5FPF0tEOD3AhdrZbBZR35pGxLQODe56s6QJVQfuWqWzmcJ
         6LFxbsigoDSP1g3fvexgymf3v8Ad7JNfnMUEmwySxXcq7zVw7DU2UfaIj6skuGRbK/eX
         MZkugLgzFpPmKNfNhKb6COWGQN/wl30KG1Gu/v5ldXhe7jYSlJv/VVd7EI3CCk5jaw8G
         ndJfyDumRQ79P0nSTHVaP4Xs5x5SPAv9u0ZSKfun2TwIxy2n5rDX5fS4VytFL0dLdm8f
         OMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/PbKZVu7JhG/U2M0cuX8vL5eM1kJuAOdtcrc7WqESG4=;
        b=rVSbMWQcpxM9diRLOVz1eRMUEEpPbc0yFgCH21X8LdE3vBQa4R4Xm8L4phEcoknfpV
         Kqd+y46w8HjhHkUlYT//7EaFS3+esCivLyiyQPO/0ex+va2FKXQSsSibr/7mklN10nYa
         B+hTX+7Dh86J3Cuk4Dj9CFyNqim4ETlpaBO6RRb1NCJUBu0M2kO2m/l/2mfreUk9dpUA
         0njBY9i9/SjqcaLUEpb2VbbD7iCoVwMJ/6nazksBonBxApnVozYJoO3a75qSS9II7PTb
         YoipO7O5xBqWyeSo70W32sJMhXK9XWOM3IT6hN9egou0r5PFUDMZQCVxYSWGYGKHAUx+
         O9vw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532SCeT8Y3Nq2Q2e5LWX7Zy9gaEEO9v3z162SvtKHnvlBSQT7oCo
	we6VddOzxD5220zmMpsyDsw=
X-Google-Smtp-Source: ABdhPJyFD3tx1GR8ZGERl6VjaV4aHl+Bw64iBdEa1QeFoGdxFSh37Rk0bgNWfgnMly8F1+BjUUu9FQ==
X-Received: by 2002:a2e:bc24:: with SMTP id b36mr11249302ljf.95.1634891819429;
        Fri, 22 Oct 2021 01:36:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:2204:: with SMTP id i4ls1596854lji.4.gmail; Fri, 22 Oct
 2021 01:36:58 -0700 (PDT)
X-Received: by 2002:a05:651c:88d:: with SMTP id d13mr11104601ljq.399.1634891818440;
        Fri, 22 Oct 2021 01:36:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634891818; cv=none;
        d=google.com; s=arc-20160816;
        b=b32wgpnSh5JpRJ5iFHJx33NvOXyLd+ZveSloSatnHeYgrvfZA4Tx4gmCZmIPdSIHTq
         OYH6mpei+RvoVaOH1FYumy9Wc6ymh5XMZP4Nz8AEYw8l2MSpnTJ457cC/c9oxXzBCqcZ
         KGEoVIpowlebJxQ2Ip0j1FYBbxI2JE19nS8erp9loTEQBG6cAfx1rDhMPm4ptlGFpqca
         y0NtMU87qdEHO4vQ3mnV7l9SWQHEWMaND9zXPSFYsSxyXG5RLXRatLr1obYXliXlxRAc
         WHdA9e83zBHPD2WDauu/2zWyhcA0Zisd8JWqVfKK5YMzMN5cqcD7dR6Wu3EwNcmrY4+z
         fjJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=wtWBzbsRV+Zg5qp+JMKyy70ncuMSOSC+Sd1jESkxvXo=;
        b=v4pyU0/mlGk7N2nhP/e7iXl+HZoo4QrS1otwQDx5a8ck+vdQ63+gWfE0u8B2ZerpJM
         lDutaXf1qOFhBr5BPvkZOMMKEXSAK2AP6MuhlKB0HBPOUzBGxwwsWF9XR1jZ/NCPzFlf
         Z/QQ/Bkh9vaMwXUHG9X0Rs3Xdu2SnsKErMMDgYbrPEVeqXBUEVsMFPiX8zE+eK+/ODB+
         utVoNfPKdACvebOHOO/swx+OIy81Rae4NStmP1uqOmYPBwMK63rKCKIhQxYgTID6dMve
         PA1k2JGg5mU3uoxQD8Hzq2CCKsak/f9MtoPeyWV2BW64d0FDAr+PaPy59mJHpJlyC6tf
         d++g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e79])
        by gmr-mx.google.com with ESMTPS id s16si546682lfp.6.2021.10.22.01.36.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Oct 2021 01:36:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e79;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 2B1BF6000050
	for <open-iscsi@googlegroups.com>; Fri, 22 Oct 2021 10:36:57 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id F1EC6600004A
	for <open-iscsi@googlegroups.com>; Fri, 22 Oct 2021 10:36:56 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 22 Oct 2021 10:36:56 +0200
Message-Id: <61727827020000A100044BFD@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Fri, 22 Oct 2021 10:36:55 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: Re: [EXT] Concurrent usage of iscsiadm
References: <4882593.9CP3fYhb5E@localhost.localdomain>
 <61710666020000A100044B4B@gwsmtp.uni-regensburg.de>
 <8d711f1e-d3f4-4109-87ed-a950e9329895n@googlegroups.com>
In-Reply-To: <8d711f1e-d3f4-4109-87ed-a950e9329895n@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> The Lee-Man <leeman.duncan@gmail.com> schrieb am 21.10.2021 um 17:55 in
Nachricht <8d711f1e-d3f4-4109-87ed-a950e9329895n@googlegroups.com>:
> Hi Ulrich:
> 
> I don't see how systemd is going to run parallel iscsiadm commands, at 
> least with the units that come with open-iscsi. Systemd actually guards 
> against that.

Actually my statement was not specific to iscsiadm, but general: If serveral systemd services depend on one systemd target, those services are started in parallel (unless other conditions prevent that) when that target is to be reached.

> 
> As far as locking, I'd be glad to entertain/discuss/review patches that 
> make iscsiadm behave well when run in parallel. But such as change isn't on 
> my short list of things to work on, since I don't really see the need. I'd 
> rather focus on making iscsid play well in containers.
> 
> On Wednesday, October 20, 2021 at 11:19:24 PM UTC-7 Uli wrote:
> 
>> Hi!
>>
>> Another thing is: Whether you like systemd or not: It runs many processes 
>> automatically and concurrently.
>> So it seems wise that iscasadm may be run concurrently. If there are 
>> issues, iscsiadm should use a MUTEX internally to avoid those IMHO
>>
>> Regards,
>> Ulrich
>> >>> Vojtech Juranek <vjur...@redhat.com> schrieb am 20.10.2021 um 08:58 in
>> Nachricht <4882593.9...@localhost.localdomain>:
>> > Hi,
>> > I'd like to follow up with discussion about concurrent usage iscsiadm 
>> tool. 
>> > It 
>> > was discussed here about year ago, with suggestion not to use it 
>> > concurrently 
>> > [1]. On the other hand, comment [2] says it should be fine. Is the an 
>> > agreement 
>> > in open-iscsi community if the concurrent usage of iscsiadm is safe or 
>> not? 
>> > If 
>> > it's not safe, is there any bug for open-iscsi describing the issue and 
>> > potential problems if iscsiadm is used concurrently?
>> > 
>> > The motivation why I'm popping up this again is that in oVirt project 
>> [3] we 
>> > 
>> > use a lock before calling iscsiadm to make sure it's not run in 
>> parallel. 
>> > This 
>> > causes us various issues (see e.g. BZ #1787192 [2]) and we'd like to get 
>> rid 
>> > 
>> > off this lock.
>> > 
>> > I run several thousands tests with our typical usage of iscsiadm [4], 
>> > running 
>> > iscsiadm in parallel and haven't spot any issue so far. This suggests 
>> > removing 
>> > the lock can be safe, but of course my tests could be just a pure luck. 
>> So 
>> > before removing this lock from our code base, I'd like to know your 
>> thoughts 
>> > 
>> > about it.
>> > 
>> > Thanks
>> > Vojta
>> > 
>> > [1] https://groups.google.com/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ 
>> > [2] https://bugzilla.redhat.com/show_bug.cgi?id=1787192#c18 
>> > [3] https://www.ovirt.org/ 
>> > [4] https://github.com/oVirt/vdsm/blob/master/tests/storage/stress/ 
>> > initiator.py
>> > 
>> > -- 
>> > You received this message because you are subscribed to the Google 
>> Groups 
>> > "open-iscsi" group.
>> > To unsubscribe from this group and stop receiving emails from it, send 
>> an 
>> > email to open-iscsi+...@googlegroups.com.
>> > To view this discussion on the web visit 
>> > 
>> 
> https://groups.google.com/d/msgid/open-iscsi/4882593.9CP3fYhb5E%40localhost.l 
> 
>> > ocaldomain.
>>
>>
>>
>>
>>
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/8d711f1e-d3f4-4109-87ed-a950e932 
> 9895n%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/61727827020000A100044BFD%40gwsmtp.uni-regensburg.de.
