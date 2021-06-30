Return-Path: <open-iscsi+bncBC6MFJWO34DBBONL6GDAMGQE3VH5XDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E633B8150
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 13:30:06 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id da21-20020a0564021775b0290395165c6cefsf988130edb.1
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 04:30:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625052601; cv=pass;
        d=google.com; s=arc-20160816;
        b=zJ9yXqJ7gaerwgVWEz2IiM3zZJVmnjhANlWbEXAAF26RoZiLU2EKZXGapbDAXJbYNA
         7nsY1z0EZbLFlYaCN50PJjgzCZm9fk/+jtMQxEzqUtK1dlnFvYwgB+xcJKpyBhmuv5LP
         8mDC7mwkJfeP7l3Nqxgqdb3awzUEpSArdPBOhm8Dh2v5UFPl8EUH6H/DI1ft4NQUlTsq
         L0KUIyIoWBNXuVu8t+41kcGNlOSmx5dzPPUtEQ1fIMTFX3zCYNWavHMDLzx+qoWIDM5B
         oZKONWxDsD77uBtdyoWlCejWcB/UwJ8nfrJZJ1zKhq2GDQMpuO7OLQUCczoLjM2I6kaM
         m8xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=UT+Ei2n6aORQ5tvgwb5m6dCPW1eCFoaOdpN9E2SAdhY=;
        b=YTGAs6gedmfiABVdp+gJVr8tOWsyZzURoIb6WXSEj97RCygHYqgN3NZQuEkloJ15iB
         DCszPe8ght+Sgt2zfaj+6B9/uCCnd8oau9jJfqR7UeMuH9r8nBwwVT9j6jEpzr2pd1o5
         O8q2V2njC9u1GZH/SGHc6kpvaitMyXd1mkC8eGBNCcIC3yWYkP5/DmQffiXEjMC7FlHg
         3c3W5mG7PW4oeQuE/0B6oy/K8JmfysNnRJMj16++ikDBhhvJC/K5gVK9mCjHODPf/39+
         pPXn4r2hwAu5pya8huq52zpjd/Dm6SZlSFO1RQA9Vx2YvYIgxat7h+vuzUssK8Fg7p1g
         T5yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UT+Ei2n6aORQ5tvgwb5m6dCPW1eCFoaOdpN9E2SAdhY=;
        b=Esucs46KtP5YUHycQA+x7xvrOhsrIrsjUspqeyRynYNQz3Vyhmja4/FWatqtouZVIo
         HRMmosUHPgJi44uGTr1n7XN95HYKU1+v1V4rq2z6hQyY5ROsnkudQULXCZmrGqJzbd9n
         iVHX7ObaIyLEh/lVlAC1aXVwRQuqUXP0HxAugdyG2DkcaoWKXz6G5+m5Z8uunmBRig8s
         8UPJS+pEw7N3gd22QYh+tckgDFLj9EJfrJAcl2NPiuaotUsRAPHerhFGgSf5p39IjI7x
         3Law2eipqdQHucWAQGPeDGl4E2PqIe1LhvrWe14s8Lu5tkWb7kxDO4qF8rEjf5lS3R8u
         8ifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UT+Ei2n6aORQ5tvgwb5m6dCPW1eCFoaOdpN9E2SAdhY=;
        b=f9Ul+QdMsE1xDpO2wl9RuxOJNGDHMXTX9r8ClVhbxoli/CJpjkaECPWwQGXm0JyQwS
         bhmq1LgTS+NoPustmGb03Z8oM9TTMpV0FIwQ7UyH+gyLxaRy78TA74tDYbIvvU6iRQ3l
         IXttn5YGmPcwChIoQCLYDjaose07VuSwBsNKWIYiwsj71rnphuKkR2+TVBjWQOxwjDwV
         +KeaIGFNOZCSoLzkGX2q3V0xzv0tnQgf/cGoTgC7mOrByXsgFVJDtx9V2NsirmM7vFZx
         vSa9SRh7lRZjj3q0Cf3b1V2ho6ig1OPzrzn9kkChTxomtXsMdB773mUB75h9BrUbIW7e
         YxBA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532gYWHcQssowDAGr4sWOFiXX+g8wpcaiSLctBSEUFzWtzf7Iate
	G882orNrLFaKbu/Zcexx3uA=
X-Google-Smtp-Source: ABdhPJyYmTjdYiVjF2cBMSamqIFCaMmQkXi+od5B8Sx4T5vBhrd30biVzPiI+cZzevHcG+W99ukdRA==
X-Received: by 2002:a05:6402:90c:: with SMTP id g12mr41577650edz.371.1625052601491;
        Wed, 30 Jun 2021 04:30:01 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6402:3514:: with SMTP id b20ls1794537edd.1.gmail; Wed,
 30 Jun 2021 04:30:00 -0700 (PDT)
X-Received: by 2002:a05:6402:204:: with SMTP id t4mr45628155edv.34.1625052600576;
        Wed, 30 Jun 2021 04:30:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625052600; cv=none;
        d=google.com; s=arc-20160816;
        b=UUAA4BFUQwgGGgLDP81pjLzP3Ic5iSGvuRiwbP1Log38ku8VwPaDJHG11RVaPQlCuS
         wLD0u7GjZ0gOLxiOE5i6iMyklCtKH5uYtB1FLAhFdijHzvogv7Ot6wzKQVcd2yKxAaYT
         tpVGF04r5MB8CsDabuFqfq8PF5T9QNj7z6c7L0SGy+pIWRf0uCJjpfnriTUp0+pRjAjh
         usSkjBR3DkzuN7my73At7HjIXEpHtqLhQdGGyBOpKjLLckcy8fK92uT31+AD4cLo5GTi
         oQAo5UYvzzTzXsNlvpr8SlJO7Ggi1GrqFcR6vrvE6XfrZFSx6CN8DIuP759+mh1LMeCc
         RDhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=zCrQaSZq5eLkqZdVqYYAU4yOwbuikHartm2Wdi9A37A=;
        b=QsMlkP8TnBt5A80lcodD1nNn5qNhnfpt/5mlB3ZSxHQWFox7TIlstLKs0c03V3ttOJ
         mlkDJg0lRorTzjuYOgc4c/PPcGDX1aD+bn+cQiihU/t7ivp1NBu948oVXkyIqRjzBytj
         L46VXY+CBrVXty4f/0khKuGFxEN8bKL9lneOxwSmIvHxDILgwUkoY4IJ+4b7xOHT5Ip9
         1X4R/asrcsQin/S4GL5jYLLuelNtkhp3kenDbkeuklmW+jGP9djnRagCXL7a8dUGg7mu
         jtMgX2lFyGQo6jMAnn1eNMcAhjvN8d7ROce6S+En+CwtfnGLMVLycMgGIX+49gNp/m1n
         PHEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf7])
        by gmr-mx.google.com with ESMTPS id u19si1206326edo.4.2021.06.30.04.30.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 04:30:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf7;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 5EAEF6000063
	for <open-iscsi@googlegroups.com>; Wed, 30 Jun 2021 13:29:59 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id 3F7576000062
	for <open-iscsi@googlegroups.com>; Wed, 30 Jun 2021 13:29:59 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 30 Jun 2021 13:29:59 +0200
Message-Id: <60DC55B5020000A100042163@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Wed, 30 Jun 2021 13:29:57 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] ISCSI Target and Initiator on same host
References: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
In-Reply-To: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

I think I did that about 10 years ago...

>>> Riaan Pretorius <riaan.pretorius@4cgroup.co.za> schrieb am 30.06.2021 um 12:41
in Nachricht <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>:
> I have an interesting question to ask:
> 
> Is it possible to share the target on the same server as a initiator ?
> e.g. server1: target -> server1: initiator 
> 
> And then share:
> server1: target > server2: initiator 
> 
> 
> The idea here it it is sharing a lun to the target itself and other 
> servers. The intention is to use it with oracle RAC. 
> 
> Something like this possible with ISCSI?
> 
> maybe not the right forum to ask, but asking the creators might get a 
> better answer
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/07b30064-72b3-42c1-ae71-f40c885c 
> 06ffn%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/60DC55B5020000A100042163%40gwsmtp.uni-regensburg.de.
