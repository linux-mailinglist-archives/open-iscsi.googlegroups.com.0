Return-Path: <open-iscsi+bncBDO7B5X3UIBBBGUB43WQKGQECOWBPIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97576E9B6B
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Oct 2019 13:22:51 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id n17sf1600108ybm.19
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Oct 2019 05:22:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572438170; cv=pass;
        d=google.com; s=arc-20160816;
        b=ki+ecC67QwQCdE8V2qwpk7sfiaW/OyJFT4AZFJWtyW/HD4OJk1B45bl3e5Kp958kTH
         iKM+q81NGn7Ytuj9UddepMokQeRzmhq8sQ5l/krXM1TfBrvVqruKjUZMCPQby/hkNxod
         gKcLK3MUi2TNYQ8j+KNKmHIpQTc7Gr3XBlCCYCNWDk8njKNYeky07d8yhoZ4fFqHa9+D
         1N8OS8C4sQW6zzVOHjvf0SEHAq8R72wYDswmjpEh8HQE90HotPhDOC8/+/HVEhN4JOR+
         ez9i/Elxei57eYN9yXc9MmG+vAZswXiZUYhYOhuzcp1tRDk9VjvnzBHdM5Xa6qkxI3AL
         hMCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=0x7L1NJ5beBr3pyKa9OncjbJLwWPSBu9u4KYKtg4iZQ=;
        b=LJtLNzeICEUKbHY5H1eeVzAHYDuP9bmg5SH0uni1Kj4Cd9W0J2r7rEDu+EZtSnwnv9
         hkGpiO5h8z8vdM0C4gQLo9u8oYzJ/R+mhhPaU4k2l4c8dYhPY31mmnQJqhu8NVSgiQPI
         4rG4r/OZoBucneAedFG/CLZTKBTkGyMfsTGNbUnFOBgenymB/YcX7FYPP9qYz0AB+tPO
         +ollv+BRlNBlb8e3ygV24uu/sK6Y1Py93jJ0r4dj9tD55OuGnEQ0v3eW8/VywS3DHFmU
         GDR4UbGlrwJ3DJUfk2fCHdArWZg3Le8OJgJ7GB4FzG8EwolyYEITERcIFRmVKQzvy1rD
         l0UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0x7L1NJ5beBr3pyKa9OncjbJLwWPSBu9u4KYKtg4iZQ=;
        b=RRl13qxGaiQbq1pAdyVifGYXTkNN2HHCKTcdFCBzhkgAylVdyms0G6aoe4vp5eddNY
         MY+z2O6bpt2DN4DrIYctAj0J0QmGBPpzomzsp7wxgwgH206ENdJF0PPNhNz1EKThouHk
         ZXq2eR5767TH4bnTFHyZnp7lULxwqenLS5QNhwPL/bndWGVfMMCnAVeK2jGKsh9hdZZg
         eQkZPnXiSr7EYf/kaRkFChIFIOp60lXAQETA6sKQq0ZlCM9Ad+4B6Fv4B4MX4mMb9QuU
         UaFpeNY+lKqTU0e0rIR1BvglAIlpvdUDsrk3MAVkzGNkFbT3rgypAtWw3FJSn6kzh9B5
         /0+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0x7L1NJ5beBr3pyKa9OncjbJLwWPSBu9u4KYKtg4iZQ=;
        b=JBKK1QmCHfP+cKvIH4gDaM72BqObtaE7Hv8ETdPTfa12lxgblfkXOm2+fszOpqMfbt
         /zIYhFxdK+1vFsTf40fj5g2lZZTWQVobVq2jLp6SAobyYpvInBUvhsxm11qfvyb8GIPM
         JE43O36sCyhuKjhOJMtfmCfajjmkTGauUCTC6FN4MB295QMiQqMF4Mct3GTXNsIpR1Dx
         ARUOIHwA3gz4+Bt4yjLL2Ypk3bDV8AT+YuK5JDUhPB6D4xOdCkbRmD+m/ynajhOHD9MC
         tTTildFZBGDOkB9DOeplc36UVNTZM8cZ90BP0VWM27inycI9Cd7n92o069MTCMobFKV+
         leYg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXi5FaznyzCNrQitUZTgiEVmFuVonVuFE1Lg85rPtVYxhmtookG
	BA5CajY10wb8hQyPFvsgK6w=
X-Google-Smtp-Source: APXvYqwUT505Re8QIa2N7O0zcBzvxpIe7dlmE86hi/0Gk0X6WrBrTN8bhwr9dgGDmJy9AGaHw42sJQ==
X-Received: by 2002:a25:bdd4:: with SMTP id g20mr3104808ybk.127.1572438170588;
        Wed, 30 Oct 2019 05:22:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:adcd:: with SMTP id d13ls761717ybe.10.gmail; Wed, 30 Oct
 2019 05:22:50 -0700 (PDT)
X-Received: by 2002:a25:d28d:: with SMTP id j135mr3285549ybg.34.1572438170117;
        Wed, 30 Oct 2019 05:22:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572438170; cv=none;
        d=google.com; s=arc-20160816;
        b=PiOHA2D70l4idVhXdLClruAUZi6BW0Z7cUhRv6++9f4EqUH3fIP9qvoANVkg84Ay0i
         QAy1B1Pd+xCAnnX4NA9rrGgIuuUQO/2bLDccwzUneH5mdV0w4INV+U2jooHUwfSs/15r
         ZN20qpL6U0xK2fvR/7VS9ASLuSW5MPxa1Ijrh8/tOxEUiRX+9iJ2ogRYekGB+2RM4+6k
         WegT3XnTYEm4zpDoPTzpK+SFugfZp5CMK9ukHfWdH8HfCloD1UdIZcEQqdTXLOLiqhOH
         ctYoWmPNgyw6x9Vui/G28WYSxpp62rgwO5zqsOU7muqoqgFszmAEQ/QDSMjOAkXCFrFx
         gHug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=UxQZiZMF9evqMlOLedCUAdSZ9OVrPP6uAj+Vd3B9eXw=;
        b=IAq79Q0bZjc3a7HN8zldOiGG8S3Z/Ex9SQ3ufx/hBwH6u6d4aFDqTEtP/dfHCDnucn
         WD03jaCQ7Z9WqV4TNd3ycyyrQEUG/3NKgeYZydIhLgo/3WfchdI1Z8/M2n5y57aQ0VSN
         lWKVZtEGOJakcp+6AOMImg/SpKo3vfOYvpa8AYlQyJhpPP3nmnJ5Ae89DNV5hR78usyl
         VhS9nar6uCqfN8YkWUYDGXXaMAmADNYt4/0MBMAnVAETHSb7+Ek+bVB7tEsMjRgm9EPb
         tfjzNyJqR4nCoeG7oTeoL5JQY2gJr2oUyg5GfGaaXjevz3N+ABFRRTZd7S2ULf6rg27q
         5Kow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id p140si128196ywg.4.2019.10.30.05.22.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 05:22:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from DGGEML402-HUB.china.huawei.com (unknown [172.30.72.55])
	by Forcepoint Email with ESMTP id EC1363EBEB1E57610E20;
	Wed, 30 Oct 2019 20:22:46 +0800 (CST)
Received: from DGGEML505-MBS.china.huawei.com ([169.254.11.138]) by
 DGGEML402-HUB.china.huawei.com ([fe80::fca6:7568:4ee3:c776%31]) with mapi id
 14.03.0439.000; Wed, 30 Oct 2019 20:22:37 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>, open-iscsi
	<open-iscsi@googlegroups.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>, Chris Leech
	<cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>
CC: "liuzhiqiang (I)" <liuzhiqiang26@huawei.com>, Mingfangsen
	<mingfangsen@huawei.com>
Subject: Antw: [PATCH v2] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Topic: Antw: [PATCH v2] scsi: avoid potential deadloop in iscsi_if_rx
 func
Thread-Index: AdWO9lESg1/320hTRWyI93hubYXiRQAAM+TA//+AUID//1OToA==
Date: Wed, 30 Oct 2019 12:22:37 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA4D6@dggeml505-mbs.china.huawei.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA0FE@dggeml505-mbs.china.huawei.com>
 <5DB946E1020000A100034B9C@gwsmtp.uni-regensburg.de>
In-Reply-To: <5DB946E1020000A100034B9C@gwsmtp.uni-regensburg.de>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.221.252]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

> >>> "wubo (T)" <wubo40@huawei.com> schrieb am 30.10.2019 um 08:56 in
> Nachricht
> <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA0FE@dggeml505-mbs.china.
> huawei.com>:
> > From: Bo Wu <wubo40@huawei.com>
> 
> ...
> > +			if (--retries < 0) {
> > +				printk(KERN_ERR "Send reply failed too many times. "
> > +				       "Max supported retries %u\n",
> ISCSI_SEND_MAX_ALLOWED);
> 
> Just for "personal taste": Why not simplify the message to:?
> +				printk(KERN_ERR "Send reply failed too many times
> (%u)\n",
>                                ISCSI_SEND_MAX_ALLOWED);
> 
> > +				break;
> > +			}
> > +
> 
> Maybe place the number after "many" as an alternative. I think as the
> message is expected to be rare, a short variant is justified.

Thanks for your suggestion. This problem occured when iscsi_if_send_reply returns -EAGAIN.
Consider possible other anomalies scenes. In order to get diagnostic information, it is better to replace "many" with error code.

Modify as follow:
if (--retries < 0) {
	printk(KERN_WARNING "Send reply failed, error %d\n", err);
	break;
}

> Also one could discuss wether the problem that originates "from external"
> should be KERN_ERR, or maybe just a warning, because the kernel itself can do
> little against that problem, and it's not a "kernel error" after all ;-)

You are right, This problem scene rarely appears .it is friendly to replace the error with warning.

> 
> Regards,
> Ulrich
> 
> 
> 

Thanks,
Bo Wu

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFA4D6%40dggeml505-mbs.china.huawei.com.
