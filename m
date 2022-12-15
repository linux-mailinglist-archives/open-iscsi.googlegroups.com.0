Return-Path: <open-iscsi+bncBC6MFJWO34DBBSNL5OOAMGQEF756ZTA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DAA64D783
	for <lists+open-iscsi@lfdr.de>; Thu, 15 Dec 2022 09:07:39 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id m4-20020a2ea584000000b0027a02705679sf2423953ljp.4
        for <lists+open-iscsi@lfdr.de>; Thu, 15 Dec 2022 00:07:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671091659; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZEamGLtbHBKL/e9wuQq+PgnIo7TPyFRsJtrwvz7afxfO7TrQ7TPMSHDfZbH03m/rc
         Q7ZeK/eZqoAqTT1PHx2vZGJO8OWxepzKtOXz5uWoL5t/WamrUW8+UOrHIu1Ew/8Dl2r9
         Ht2ZRxuQPzhYPGNphpXJvePhD2Jf+aUM/fW9O3o6MiW9LHiWjCwWdsMrjVeoHcvDiaUB
         QWTkkqQmxnr3Xjvkttm4i7K9S+VXFiB2/jmlLN2yY23rPIFiB17OXiKK3VmjDZfqKKRv
         XbHLCwnc0EbG5+b79FwKBUIoyLHhJv6e179By4Df6BRhk4v2oTjFOzl+YmKlf63Dn+Ds
         lo0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=ki7LuvsniyTdqmFc70X9DemwPouIuWyH08YFetyTdjE=;
        b=IpwZeDp7sqQTi7o8FMWMy5jlNdLmJOUIppddouGuWFSWLDQy1P7dHEdjJuLFqQv99P
         IF9xki1f8L63dNn/6+8/m7Gmd/3MgnS/h38L+ROrKaMFDKHZq8HnLrkeeJDD+3jL0h8N
         YZ64oB7Mije5XFqiy2TwUZI/JShIagUHZBfiHQYFsqEWfSCGCuV2AqAc7nmhCK4weU4f
         GXqMMyshx1zBfFe1PuZRqIHjeaOefwKA3AMrw+T2hUy7KLzuvgtkVVcxybM4wPl/m78p
         ilTkqzGOrJpyIL04pq3RPQ72pR9SmVGUzY78/Ly5tANZ0RuTVplWwkM30FOZF0E8LPsI
         kW2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:cc
         :to:from:date:message-id:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ki7LuvsniyTdqmFc70X9DemwPouIuWyH08YFetyTdjE=;
        b=iC3lTWRZmsdtWzUnWRnqmJUvrFGbMBXKanSkumD3QyoAg/9pKviDBIaiEtJ5r9uNXz
         MtZhSDoFqnILu8vdbE5DjBZuV4wQY49m4O7p0HqQyELbFo/SANJNCh/2jaGUozWkaBXH
         kfmmIXTS+YyDk7EDrI3gCLTpLUUPrXGvB7oavg1OlatiJ1b5sXTYkk3b8tEjq+A54us+
         weGkD4q+16vOnyQpxrZhnHpgnqDMPhI7MV0z0ZQ/AkltkrEYR9Ipntw6Me0bon4eJC51
         C4GI24j5oGr6dYknQHGCJo6ObEArFzSt2gBs/f3eHYlVWzkhhGpu6g/HMV2ooukzjqRu
         ZEYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ki7LuvsniyTdqmFc70X9DemwPouIuWyH08YFetyTdjE=;
        b=beqI1nxA1pn+A1x0kSlswO1q2YNc2ELWvy/23sZhyBp2E0N72OPjEFzzmYQNH9Kx2s
         ryZ/qNW3FJisTWOcD6bqIY4lrdu4yI0OJfxYlx4eeW9Dv/rqfHjWRu7nKSQnoC5EuDsO
         zqiuDccofEoc69qSE7GHxHyI1ieeHyZQTAqGgtzeyKZhYoWYax3PQlbVH5VN1ckLeJtA
         2ZbN2AEqO/zsjLa5+mOBIFZ86rJJIsS8nYJQfG4zU5WwDcQf246n8b87EMFnU9xk3nqG
         dEw/p9YOWe+57/sHyMqftUzhEQdNs8/y9ptSJo8js/34WJj9clr6ju3bLk02zMfsVIcP
         uMJA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkgnsi33fhR3xO7SCiMwSCqQEf/ukYoYtqaSApfpDPbczCnOPsc
	PCswqI9KyCh+X0MOsk1l408=
X-Google-Smtp-Source: AA0mqf4cI4jyd4HsA2SB7PtHQ95exKUPCUqZHxdx3jFcfYsqevvNByBGjnqtXYwfu1yiMI1mQO0g6w==
X-Received: by 2002:a05:651c:1c7:b0:27a:267b:f33f with SMTP id d7-20020a05651c01c700b0027a267bf33fmr1706478ljn.260.1671091659015;
        Thu, 15 Dec 2022 00:07:39 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:2012:b0:4a2:3951:eac8 with SMTP id
 a18-20020a056512201200b004a23951eac8ls1906712lfb.0.-pod-prod-gmail; Thu, 15
 Dec 2022 00:07:36 -0800 (PST)
X-Received: by 2002:ac2:4346:0:b0:4a4:68b7:ded7 with SMTP id o6-20020ac24346000000b004a468b7ded7mr6762663lfl.51.1671091656155;
        Thu, 15 Dec 2022 00:07:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671091656; cv=none;
        d=google.com; s=arc-20160816;
        b=vPMGn2qiePozhnJfBl+cRDVMO78SXsXj1RKa4A9UCcygQpv3tXB1M2J2xt3x8e12Bv
         Tai9PF8eIIOa+B1C0Wne4Iq3M8zR/zo7CM6zMz3485Xccm9Lp+4BegXlnPKyWYLNXQC2
         uPreppZdZ6BGcyb4WUMQwDLMIgUpju0wOSy6Zhey5a4R0WrwXTVpM7vSfrCUbjJLcTTt
         0OQpQy6P33/GtO1iaqGDdXxV7x0B7LEG09CEWR6ia96wk4f/JKT6ipJZBb+XMcLYlrFY
         K4ltR8LtvKxOJX3m7VZxRO52cwPcTacsSM1Rl6pl1zoeRB8R7AoMeXEqPSjg8uVH+iYV
         Z8TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=meZNLv75KM5iVjoOgfYamiO7EczxVmW/02fpTbAj/C8=;
        b=YPrkM9TsrT4grktJ9oJIz3T72NP9etZ3ore5EhoWXSp6djOcHlTb85TabbUN/ijRND
         lUShtD5vQzQglYarLHYYWYgf5b+Y5TtUX4N4aOsLHs5AqA7G7eA46wCMKT9E3pEiuhd/
         bRP0/5tM+nuEtZIzRdW1eTUm+EVvY+ttqino1cVPP0aR2KHvH5ynz4W27UFmI+G+0Nl1
         fY1aIRUDJkqseoIwr3Erc7yQt7xHfjt9jUZ5tnMGxTO1Jjm+PQDj+h79TD98WJkpWEil
         XC30PfuWXmaq0dQZEY294GNqLsIPk1MEEq2KcykFgGPyL49b/DO1+1Ttlzx+uRdcA0og
         kCkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id a10-20020a056512200a00b004b49cc7bf6asi406307lfb.9.2022.12.15.00.07.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Dec 2022 00:07:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E0E556000051
	for <open-iscsi@googlegroups.com>; Thu, 15 Dec 2022 09:07:34 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id CACF9600004E
	for <open-iscsi@googlegroups.com>; Thu, 15 Dec 2022 09:07:30 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 15 Dec 2022 09:07:31 +0100
Message-Id: <639AD5C0020000A100050749@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.2
Date: Thu, 15 Dec 2022 09:07:28 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: <haowenchao@huawei.com>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>,
 <linfeilong@huawei.com>,<liuzhiqiang26@huawei.com>,
 <jejb@linux.ibm.com>, <martin.petersen@oracle.com>,
 <michael.christie@oracle.com>, "Chris Leech" <cleech@redhat.com>,
 "Lee Duncan" <lduncan@suse.com>, <linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>
Subject: Antw: [EXT] Re: [PATCH 0/2] scsi:donot skip lun if inquiry
 returns PQ=1 for all hosts
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <Y5rHX95Vvl1aLhbp@infradead.org>
In-Reply-To: <Y5rHX95Vvl1aLhbp@infradead.org>
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

>>> Christoph Hellwig <hch@infradead.org> schrieb am 15.12.2022 um 08:06 in
Nachricht <Y5rHX95Vvl1aLhbp@infradead.org>:
> On Wed, Dec 14, 2022 at 03:08:44PM +0800, Wenchao Hao wrote:
>> When iSCSI initiator logged in target, the target attached none valid
>> lun but lun0. lun0 is not an valid disk, while it would response
>> inquiry command with PQ=1 and other general scsi commands like probe lun.
>> The others luns of target is added/removed dynamicly.
> 
> I can't find any special casing of LUN0 in RFC7144, can you clarify
> where you think that treats LUN0 any differently than other transports?

Actusally I have no idea, but as a user of FC SAN systems I can remember a case when a storage system had to present a dummy LUN0 to enable hosts to find other LUNs (while LUN0 was never actually used). Maybe the client code was imperfect, I don't know.

> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/Y5rHX95Vvl1aLhbp%40infradead.org 
> .




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/639AD5C0020000A100050749%40gwsmtp.uni-regensburg.de.
