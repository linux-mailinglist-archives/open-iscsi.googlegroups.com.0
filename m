Return-Path: <open-iscsi+bncBC6MFJWO34DBBRPFUSFQMGQEG4ESFJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 5283942EA8F
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 09:50:33 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id e14-20020a056402088e00b003db6ebb9526sf7408838edy.22
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 00:50:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634284232; cv=pass;
        d=google.com; s=arc-20160816;
        b=I25N2ScC+EIujYL0cVHQW8qvLeMR5yMM1vjcPHPRnovNzZO1SvkeU4V5kzdw9C13r2
         78+dWKMLML4rXgIKETENMrwX41d0rESLkGqFiAFcQHnvNIpnFiKcHaUfHy+5jps8bBvZ
         fIPTC0bKj/WgvUVtz6AUZ75LqVyxIEZ5Z1jqYAF72X43QY4KLx89fHDscwOvUOwjdnIE
         xjARXJTIREYGvf1WLB7kTdgIvdcYCAGuZmqBvjxAaPlFbBMS6wl21A3FHEaZQlkMKwFY
         yZOZf1MMod+Alxhkz4V9Jg8Z7KdDsOKt8UfKHR07XPqN5oTweZds/uz3YcOpUuqnhFm9
         xICg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:from:date:message-id
         :sender:dkim-signature;
        bh=12dKw1fB4+7qiWhyGfWAQKpHzqOiuAJCVUiKeEv+JPc=;
        b=uKG+IUzj8fVPr8rOizQzciGka8pdnhRyduTyIN4oxUktkpU6g2V8syNsptEwizqM/v
         iD+TpHEqmDwY2D1hZF2tl10sN8NEjTAkOX1uoZ/H8nV7WGHBRQ6jE7tCwmEqf8jzLmU6
         E+tCJdNlAK+MabNLz58Qf/B6kWD5Rd7pQ6TwV55SymC/dZ27Us7bS6In+c7DNeZzWRSZ
         OEyjrStLw7TX7UkZg8UvmlkTh6m99jbSiO+UfWDmfipoXHeBbIVivroG1mXSxWMSE/2M
         2l9l56TKump4fTNlXQt/WQ/zAXIGw17CFwkuB18h0jLzNj4VjIa0feyg2uzapP2VK30X
         ZUjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=12dKw1fB4+7qiWhyGfWAQKpHzqOiuAJCVUiKeEv+JPc=;
        b=kJi01Jt51kwVXVGmaP3Ll4D/ph2nqAoyMir5O3WBfLPGEp0L27X+C0CWX+JqoaskRX
         O0Z3wkcD2NqIbOyII9lCQXJIYDVoSFxURsE4OBgakc2/rJGRcyAwINZiYLZU7aHAXVHq
         1Q+UzcV+QREmybBFqibubNItcFmHuxDvgViq3mUnF4z563C4r+T12I9CrrI1MKYXGt9h
         Ber8ROcnnVNPQAjV9dC9usGY9Z7JN6yREs20ejsarK+myi7J46fXLYlRfucLz/aagJor
         ViCj3f+Od2uw1Ib8PPgq0k7X8SZr5myvFCmm3rfGbvhK8HzW/nk7qufNMTzkbUgq8BDy
         JmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=12dKw1fB4+7qiWhyGfWAQKpHzqOiuAJCVUiKeEv+JPc=;
        b=aiGp8PxmWYQYPMEfC9qJc2X7oHrxdQvZyiH2y/LYAywXV2M7PoqyzqWwL6wdkpt4+T
         t2JB4x/wZoRlbu82dqDnUZTGhKOSPN/w7Uj85pca+f7+F+72cMfZ9WQrksHWkz2l/LPg
         vYZ0blud9m2WgfHgnYeKjdTNI240T1qoylPDz5dleAQtXdgDKL4vYgLpFVgtkq2O/z4i
         DOcaU2Zt8MaaoZygm5ZckogHo/C4BURufzDwYywI8P6GJkqhesfYt6kvsoc/B0B5rHzw
         GIZ1KmtHYJ58WULDScM0vEAuEz5IQsvqHjgaPqMXCulfiN1ufnLqMGKR8aSw/3N65F7H
         vxpw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532vHfcb8pgZc4ynLiauag7SxqIX5r0PyEge8c72yZpqLqswgAYM
	yr5MSYXUMltk1WNIKoslS64=
X-Google-Smtp-Source: ABdhPJwkHqkLRXgVUbNucF/dYRHOugBen/Y46aL9Nf3fF5pGRnQcA4ZUeKaNtAij18o01uwzyJ7PdA==
X-Received: by 2002:a17:906:d107:: with SMTP id b7mr4750948ejz.541.1634284230109;
        Fri, 15 Oct 2021 00:50:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:907:3f1c:: with SMTP id hq28ls3103891ejc.8.gmail; Fri,
 15 Oct 2021 00:50:29 -0700 (PDT)
X-Received: by 2002:a17:906:ce45:: with SMTP id se5mr5032715ejb.386.1634284229176;
        Fri, 15 Oct 2021 00:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634284229; cv=none;
        d=google.com; s=arc-20160816;
        b=WX0lacx2ZRrGWIpCTZ973xJrt1oYSHYYny4FTsPArpPLTKZ4he//+HFtxSwLMgxpjs
         RJfXmxutHcWPphAb5EHap3kzQVBhJrAxMVeZqBDZO2kz0VYPc91B7f388yBPgwcanB7A
         ETB2i1h+NtYrPQx7li3XCcE1M5Kt1hLrY/l7+HPL0W+i/eLxvRZn6c+OHjamZmgbig2b
         cz4WA3t1WVykp7R1C5Ataam33rp4yXojkMDUAB6cyO0D7/rs7kbtv6F+FjTSpU8YYG0Y
         LFc0WMvh7A95ChCH/BZolJzyKwJLMxBPhEwhkl6oYD4uZMdkw+1N+1CnV3EtY3F7KQvP
         MpHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:from:date:message-id;
        bh=IYqNWSWlObleVAsswM6UktqzI0QoZLBCzipRR9Sp6JA=;
        b=zd/SBKCMpqMqOSuswFxsv/6Py1Snfpx+EgM1dFqoUTzXupfQd4y5iCUZgnS7pT1Afi
         xNgwVTZKTYuBPUkFEPQ01kWaW0a5VeybzLiBE/HtGQA56V9SVM/hR/NIK5j3c2uwss22
         XRs9YdrBlLHeMabQudDHPtT3Mjwp8uDrhCxljZS8IATQkpNWIRSMXthbrIIOKqtUlNek
         g4sU3//PmTVhjWrJNrpZ74HB5UARDU1nBjotZGeBsbB3UjZMI9+LoutbyIkQK6YJxI6C
         PpfaUNPFJ7xtr07DrjoZJZ2DCPo+QGtKKJnf9uKriu+Ow+n3OCVmmk/5mYMdWwkop6Hp
         mHhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by gmr-mx.google.com with ESMTPS id s19si387190edi.1.2021.10.15.00.50.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 00:50:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 6717A6000050
	for <open-iscsi@googlegroups.com>; Fri, 15 Oct 2021 09:50:28 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id 40552600004A
	for <open-iscsi@googlegroups.com>; Fri, 15 Oct 2021 09:50:27 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 15 Oct 2021 09:50:27 +0200
Message-Id: <616932C1020000A100044801@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Fri, 15 Oct 2021 09:50:25 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Re: Antw: [EXT] Re: [PATCH] scsi scsi_transport_iscsi.c: fix
 misuse of %llu in scsi_transport_iscsi.c
References: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn>
 <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
 <6163DB2E020000A1000445F1@gwsmtp.uni-regensburg.de>
 <ae7a82c2-5b19-493a-8d61-cdccb00cf46c@oracle.com>
 <6772c5ef-4666-e2b5-2885-797baa939b45@sjtu.edu.cn>
In-Reply-To: <6772c5ef-4666-e2b5-2885-797baa939b45@sjtu.edu.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Guo Zhi <qtxuning1999@sjtu.edu.cn> schrieb am 15.10.2021 um 09:36 in Nachricht
<6772c5ef-4666-e2b5-2885-797baa939b45@sjtu.edu.cn>:
> However if this is a special pointer to lookup a driver,  It's really 
> tricky for me to fix it,
> 
> as I don't have a scsi device to test my code.

Years ago when a big server had 16GB RAM ;-) I was creating some RAM disks to test some RAID modes when I didn't have enough disks available.
I think you could still create an iSCSI server exporting RAM disks (in case you don't have some spare partitions or logical volumes).
Shouldn't hat be good enough to perform some tests? Maybe it can even be done on the same machine.

Regards,
Ulrich

> 
> 
> Guo
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/6772c5ef-4666-e2b5-2885-797baa93 
> 9b45%40sjtu.edu.cn.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/616932C1020000A100044801%40gwsmtp.uni-regensburg.de.
