Return-Path: <open-iscsi+bncBC6MFJWO34DBBNNZ6WDAMGQEGEPZDIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DA23B8DA2
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Jul 2021 08:12:06 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id u7-20020a5d46870000b029012786ba1bc9sf2053109wrq.21
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 23:12:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625119925; cv=pass;
        d=google.com; s=arc-20160816;
        b=urFKhI69O8CvIpdzn8mYnZ+q2yuMXVk+H53IlCjhGfK2HbRJcMJkAhO5xKB0DYmtqZ
         yyAdFZlZX5c7rrALVbOnOI0sMForpYa4Igy/h8ChZJOTKB5yaT0XOBzPv8ntfece2OVe
         88RfnasaqWQs0Z+yY8vyXqQvA1fv6MVpy1u/cA5ewDvB54p8uvgal9IsYcEJANGiHCYW
         ARJCaYoOnm3xJr0z4u/6USz6GQJ/Jt97EoEHNrRzK4l37t1lro5xBjlkYshM6D/JTCti
         9Ac537fDsJdeI3ACYQ07GepEAsfkusUhEoTkWAtVoojV7KK0sNCPrXXVjPAUKtp5k7hW
         i29w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=5Wx4H9AFM5ZCU0IC2zkAY9Ybb1d/tY/Sv8JvxaxrdKg=;
        b=RtIk+82GmN79IzfjeycJEbCur7ljOg6OFy/lH4y9KQDYm5NJ9Uiw8jC5IIpvfLk8kn
         ABZMJP4Ogs0Toat1ytBVJNdijAYJajAF1LNGS8MHwEBMWOBTBJ6TxGHBN6Su5M3nZYRv
         NKk8xou1ioEez7KnkYC4Cduuxt+BVEsmS7Q9rsnrxb7Z+0S/7X1WveMAqrXxW8yz7C6c
         eK0vQNNc9tl7BILl6lm720yq6Ykh+GN0OP0hLi98m7m6CbWW/KVngItr1UOrB1wcIkmc
         5EQs9bB5itR+m1Aa52CH78LDi2AzRQ4FGUTsRmf5TmtXfEDxCtWmiN5sRr+9iFpWo3dl
         +PrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5Wx4H9AFM5ZCU0IC2zkAY9Ybb1d/tY/Sv8JvxaxrdKg=;
        b=fVHeSiVMxEQRmeh5NI/LAr//G4bzcgqpCxBhFB4rPFlL1DtAspA0QkpQhWdiCiOsX7
         uhGkv6BArwbfmOVvTzqJC9+FSnroUI8CP9vxVu8DTuMfnbxvynDLs21DVHZIw/iaw5Zf
         /GDprTi6PNBcLJ0g3UNbRIkl1sGPYgMvFtSnvxHMrBmWJkzLqLOv08ItfGYvvBCB4taB
         pXzTfAAu0ILxipTaPhAkEmJBE6iW387t0qWYsgSkhjVcKnqKyU44Rerrlu40BkPNiwtm
         QveCpjNBbaonVxC5Qj9TGKg4Br9gDOAbzNyR42eOGav1I0kp7cq3ZMztRR+f8PvX+/Wx
         P+/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Wx4H9AFM5ZCU0IC2zkAY9Ybb1d/tY/Sv8JvxaxrdKg=;
        b=rpQtBxyD02qy9lNNZzlMY+DptRPf1mDt0jfzoJp0mQ9TMGAiYBZGq6CqWX8nBEqWMz
         YFFPSl5rGZ2LT32l8e+MQxEGCIHUJekepSitc16Nfx50eAdaEacjoA8pcg9O1MEwSJtH
         I3942F9FvFHObsqiiXH2uPZ8I8GYsDeEx9PllGPPvd6Ow3J89cKPLfUPRgbyVhWxaPwf
         A4/btmZ8n4TrirYWbZAhgsQvGSsInFX6a1nsuhSiOF2xpEtHGvhNDqR/YvxAuyNTKGqh
         UThxgk6Kt5SA5I/IiRik9QLRMTYfoaqt+dQmQ0xY16WQyuYoYESUBPpcI9eR0UQHEWQj
         LmCg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530jafHXlRblwQwnhYrx6vaUe3Ufd7y63HIZjuwhtaN4fLSrfMDT
	K0sIrfeVvVVXSmi8cPnAqI8=
X-Google-Smtp-Source: ABdhPJw480hVedj2sauPMYgWMaEnQvZ1bIB9x2LwhUM1cu+FRlBKzfDivXNfKkfXfgRQjjbgj0JhTw==
X-Received: by 2002:a5d:453b:: with SMTP id j27mr2247755wra.413.1625119925828;
        Wed, 30 Jun 2021 23:12:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:5122:: with SMTP id o34ls2584183wms.3.gmail; Wed,
 30 Jun 2021 23:12:05 -0700 (PDT)
X-Received: by 2002:a05:600c:40ca:: with SMTP id m10mr40938567wmh.105.1625119924996;
        Wed, 30 Jun 2021 23:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625119924; cv=none;
        d=google.com; s=arc-20160816;
        b=W8P9hgFjFzgFb4WivHikfmvW6LoqsYdgrMiQNpEOiLZWQTkD8LSQcOgJlJztdpc4x+
         PQM+k/FEO4E4iW+5/HHKNBmUpX+1G3Y4d+7eEsHRrNewsk+J7Ruok5Fk1hDi/adZuk6+
         oRHu28lGwPJiROImNfuStGwe7k/G2+mz+HDOFlJ0ppZm+5iAtOsdN8W6zFNqWB4sxEO/
         Y9rcstjPt8AH9z4XOGQXdw21hHeoVV53FYSHjyIuvAECim25/1vHskioMftuqJgH0xO7
         c/b13eGdPHcmh6Pg7/nvMrLR8WgRwN/pcSgdrBXm2PBOg3eMMNI9g99v+K4bTC+UIz7g
         jK4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=CjZ79v2e1ktbAVPEJvn4Ux8ZIQ5AA120nVtTFjJDnDQ=;
        b=VrpwTJDwUkGfD2+Rgsc0tZpKCMWdBdfQVjiNmK1lD5QGxXL1Alq1vUroHhYT9lvvOg
         r8PD6NKdkZZUJvv3dZWKOnalJQ5BhLWUix/345HuGLJvBL45zGjaFsHO+IJ1CRRW2cPM
         ga9YUla0ZZpTTmzBOiOtuRkWP2xJ4EgNmeKNATZqsy8oA08GOuqwfvYot/zZXJ3tYfDc
         hi/bbUlKyK8dt6iX+EvWknZnkousvFpIotk4u+ZbLcAQeGy4QYdcW1j4M5bpy/Lr5oU7
         Y1xwM2iL6l/cdvgo2jytjiDnHcNEymR/myw5///cxpNRbHQzhmYZgK5Y8CvKCr7xAQd8
         QRPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id k3si743322wrx.1.2021.06.30.23.12.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 23:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 34E186000050
	for <open-iscsi@googlegroups.com>; Thu,  1 Jul 2021 08:12:04 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 0DE4A600004E
	for <open-iscsi@googlegroups.com>; Thu,  1 Jul 2021 08:12:04 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 01 Jul 2021 08:12:04 +0200
Message-Id: <60DD5CB1020000A100042184@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Thu, 01 Jul 2021 08:12:01 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Re: Antw: [EXT] ISCSI Target and Initiator on same host
References: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
 <60DC55B5020000A100042163@gwsmtp.uni-regensburg.de>
 <B3425A37-BF5B-48DE-A3DB-3DFC856F19E7@comcast.net>
 <f3e8a3df-cfb2-4913-b518-e01a801614dbn@googlegroups.com>
In-Reply-To: <f3e8a3df-cfb2-4913-b518-e01a801614dbn@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Riaan Pretorius <riaan.pretorius@4cgroup.co.za> schrieb am 30.06.2021 um 17:15
in Nachricht <f3e8a3df-cfb2-4913-b518-e01a801614dbn@googlegroups.com>:
> I get strange messages in my logs when i tried do that. and get disk 
> "flapping" when the disk just appear and reappear continuously after a 
> reboot.   logically it would make sense that you can do this, but 
> practically  there is weird issues. Would you guys say it might be a 
> misconfiguration ?

Maybe be concrete with your setup and messages first.

> 
> On Wednesday, 30 June 2021 at 15:10:54 UTC+2 Paul Koning wrote:
> 
>>
>>
>> > On Jun 30, 2021, at 7:29 AM, Ulrich Windl <
>> Ulrich...@rz.uni-regensburg.de> wrote:
>> > 
>> > I think I did that about 10 years ago...
>> > 
>> >>>> Riaan Pretorius <riaan.p...@4cgroup.co.za> schrieb am 30.06.2021 um 
>> 12:41
>> > in Nachricht <07b30064-72b3-42c1...@googlegroups.com>:
>> >> I have an interesting question to ask:
>> >> 
>> >> Is it possible to share the target on the same server as a initiator ?
>> >> e.g. server1: target -> server1: initiator 
>>
>> Yes, I've used that in a test setup when I needed to put a file system on 
>> iSCSI (to test pNFS).
>>
>> paul
>>
>>
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/f3e8a3df-cfb2-4913-b518-e01a8016 
> 14dbn%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/60DD5CB1020000A100042184%40gwsmtp.uni-regensburg.de.
