Return-Path: <open-iscsi+bncBDGIZD433YCRB6XQRSUQMGQEGKDYT4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3AD7BD11D
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Oct 2023 01:17:18 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id 98e67ed59e1d1-27733adfb12sf4313834a91.1
        for <lists+open-iscsi@lfdr.de>; Sun, 08 Oct 2023 16:17:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696807036; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZaxldcoDkKaPHBnvhpXEIxJvFybg52ihx680sm0oKFN6P3JPJ/CnmbFkZmM+T98eC
         PsOCmMnJefpNI6lGXVeTgwyyH4k5Jl4QcsKnm49EcXRbHKpgxGRjy/qpGeseSZ4v5NQE
         fpFAUj8M3wVr+DVBji8VwQP8kTCqDEZctvdGo4fYiogu9PoOjZKX935zksm/yZsl4cGa
         S6IZKVwqpFU7scx/94a5o36ne9yQDPokjlSg8P+d+kOuXGICx6CuPAPmTQD5rYRBQQfN
         /koPq5xOFF0vpqzpFI0WFq4jmDbNzzPZvSXYBKfupRSjyZkILhHNx5RsGnuf2ULXKOEx
         Q21A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:sender:dkim-signature;
        bh=3SWlBANkP5h2TJ64nRzGsJZF9ATYxtUy1Nkdw8WYleI=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=AbO/nhYfMr1G6Qj58WM0cau6WWH2lThGVdG02716cQ2oJwByQhxf+jApFBMRF7yMTq
         rAADAC89t3yj3uG5yE+5v//NQXmbtQXQ9Wm78hiKo3+3ycpT+fBmv0xLqhO0L2mVfJr6
         TdS7wh3M5FJtmFlT1aCrx8b/1M46AW5XexhoJBJa3tH2gHgqLs3Clj55QENVWMiRZ8RH
         WyE1a86eCMv/IlAADjdkNsCpMtj5f7c+oU8vIvqK21rhGXHZGYmhrwk4JogqRkLJy9h9
         yZJkEmsDO9WoQgtQHzDqZwMK1RQe0zcXRbchfssvpiq4iwEwn65OaeJTX6/BjZ9reUkW
         jGVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696807036; x=1697411836; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3SWlBANkP5h2TJ64nRzGsJZF9ATYxtUy1Nkdw8WYleI=;
        b=mr4BvqDKmNGrwZ7EWnx6N4F7NvD007fVsF0w9fP6xq9jL5wRAE5d75Kkk0GQxj8w0J
         J8ZOcLddhBbm5hIT6QQ4Wi9v3Lphzi/9wCg2DyQNYJIURHFnyCuyLHBe8Nqitd/gn5IF
         CWZiKV6PAYYKOvvFV6FhJd34fySikxla+fTrqCCGHIbg6M6AxJJU/B0u3N46R8KVgnAX
         HD8s07Qv9bjqaMexIz/xm/FpvazXqq6GTSjraI3cPjtrBSuyRNxZ0oglivlrE95ba0W/
         VE22JTwAIG6371PvMTgc2V+p1NTUAZo7UAYwZH6ndYGfZt7K2F6FYBuD9Qe6EBLzzOrb
         DVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696807036; x=1697411836;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3SWlBANkP5h2TJ64nRzGsJZF9ATYxtUy1Nkdw8WYleI=;
        b=G9avn0FcQynz7hc3+4UbsTvZGafFz1cKr+MyBAfM6viEBcERmsm7MUp7y1UBxL5p09
         8Ytqn9lPE/W0gzf9YPy3O9Udzxo8ilnNX2jOsm4rIaucN2z/eShMsv47n6wkLEz0vL/I
         AliPR1oLClPAMte3NwIR6bk6GQzcGgwTWjtJ5L4HIkPkSy6MoK849PxAjIqoRRopb8mt
         mX4wZQMq/sypeiPlQgtn219hskg+sfrFsdhEkk8IQ1uTsyObZ0RU1YI5AoxGt3FazaK+
         /l+IchtINvbB558aSHFOI+xIAcISiBmlS9jjCiRJcmU5rwWQP3EkVp5isSt62JYbGt8l
         i//g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0Yy8L/Uq7QPWi7JZwAFrsCMMWD9eX577jJ4HxoRnQn+DVK4TGi+r
	1ts4aoixd24rbo4RA4ocJybYoA==
X-Google-Smtp-Source: AGHT+IGiFXHuc/kutbXigJO9fXSHvF+/ZAvV2eH5m5bUE3SXMUvGi4MBZmxhUtSleKQb4ztgfwgpmw==
X-Received: by 2002:a17:90b:1810:b0:279:dae:2d3f with SMTP id lw16-20020a17090b181000b002790dae2d3fmr17050935pjb.22.1696807036190;
        Sun, 08 Oct 2023 16:17:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:280b:b0:277:3d4c:6176 with SMTP id
 qb11-20020a17090b280b00b002773d4c6176ls3809996pjb.1.-pod-prod-00-us-canary;
 Sun, 08 Oct 2023 16:17:13 -0700 (PDT)
X-Received: by 2002:a05:6a20:12ca:b0:159:c07d:66f0 with SMTP id v10-20020a056a2012ca00b00159c07d66f0mr17058118pzg.6.1696807033577;
        Sun, 08 Oct 2023 16:17:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696807033; cv=none;
        d=google.com; s=arc-20160816;
        b=0iCzjtcslwyvIrMpsWIRPya/4SP17VrMVTZacg4+FWTEXrd3WrxWhUHrSe43JCcWcB
         8AymSMUTLErnAAiToosnpE4IjEvKY7JXw+/aLMx2VFmac9UPoGKeGNE0fsLp2h746+iL
         dOXGAZ/GMcJiX0Fb2VrAbFYBl9gVmiB3Xrnikovx5h/accaPEDpg5F/ynvF8W4nc9zsS
         GHp04ZoJL3Zs6GGLMhqndD2VyIGSQE2UJRlnFfo/ZLC5ZEmOPQ+fxNAsQinqNL8LM8ZW
         fRsho88ayWXKYwFxOUAqnlf8V0U49FZk0eQeuGfzGDtK8FIQYGtIbdKMz0LZtJop2/ev
         kWag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id;
        bh=E0EjtfcP7p2Ip9Li9ereBqwMQ5UIGWLUIIU2+loQQiQ=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=kK/qGaak/GLflAba3aIkJ+TMO+GYw+GRHYhcZubHVM+He/gdYrybNfqPL9whibOTcd
         tOR3FJ73urbBOZlegzqBXPnX2VlB1HfkFwsA9eK+YtGGkxcRbZU+84IuL66D8QLarxyZ
         nF2jSxPQ6TcqI+7Q9y1Sx9/LYcgagq2p0nikvUbyH2mpchgUvhgjzMRIaJdYchhyGtvU
         z2ErfW0bvVKvXMw54vINtUgeeFPY3X77uIEAl0JpHFR+cj0rAyzP6jvt0Awld9ga58v7
         SI8xLpcIKUz3RsvueTEsrGln4epe+gyO9RWZAw/PwflOoAqgWQnqF+xVHSotC8Ig+fXj
         WSWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
Received: from mp-relay-01.fibernetics.ca (mp-relay-01.fibernetics.ca. [208.85.217.136])
        by gmr-mx.google.com with ESMTPS id o1-20020a634e41000000b00569ee9c848fsi570245pgl.0.2023.10.08.16.17.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 16:17:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as permitted sender) client-ip=208.85.217.136;
Received: from mailpool-fe-02.fibernetics.ca (mailpool-fe-02.fibernetics.ca [208.85.217.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mp-relay-01.fibernetics.ca (Postfix) with ESMTPS id DA5F8E1947;
	Sun,  8 Oct 2023 23:17:09 +0000 (UTC)
Received: from localhost (mailpool-mx-01.fibernetics.ca [208.85.217.140])
	by mailpool-fe-02.fibernetics.ca (Postfix) with ESMTP id C39346091F;
	Sun,  8 Oct 2023 23:17:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at
X-Spam-Flag: NO
X-Spam-Score: -0.199
X-Spam-Level: 
X-Spam-Status: No, score=-0.199 tagged_above=-999 required=5
	tests=[ALL_TRUSTED=-1, BAYES_50=0.8, URIBL_BLOCKED=0.001]
	autolearn=no autolearn_force=no
Received: from mailpool-fe-02.fibernetics.ca ([208.85.217.145])
	by localhost (mail-mx-01.fibernetics.ca [208.85.217.140]) (amavisd-new, port 10024)
	with ESMTP id n9tGbeY3WSBp; Sun,  8 Oct 2023 23:17:09 +0000 (UTC)
Received: from [192.168.48.17] (host-104-157-209-188.dyn.295.ca [104.157.209.188])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dgilbert@interlog.com)
	by mail.ca.inter.net (Postfix) with ESMTPSA id B336660455;
	Sun,  8 Oct 2023 23:17:08 +0000 (UTC)
Message-ID: <d61e88d3-e1b7-44e0-ba9b-f633be0b5b30@interlog.com>
Date: Sun, 8 Oct 2023 19:17:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: open-iscsi@googlegroups.com
Subject: Re: [PATCH v5 10/10] scsi: scsi_debug: Add param to control sdev's
 allow_restart
Content-Language: en-CA
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-11-haowenchao2@huawei.com>
From: Douglas Gilbert <dgilbert@interlog.com>
In-Reply-To: <20230922092906.2645265-11-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dgilbert@interlog.com designates 208.85.217.136 as
 permitted sender) smtp.mailfrom=dgilbert@interlog.com
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

On 2023-09-22 05:29, Wenchao Hao wrote:
> Add new module param "allow_restart" to control if setup
> scsi_device's allow_restart flag. This is used to test scsi
> command finished with sense_key 0x6, asc 0x4 and ascq 0x2
> 
> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>

Hi,
Looked at this and verified that the allow_restart flag of scsi_debug
devices (disks ?) is usually 0 and when the scsi_debug module is
started with allow_restart=1 then the allow_restart flag does indeed
change to 1. For example:
    # cat /sys/class/scsi_disk/1\:0\:0\:0/allow_restart
    1

That ASC/ASCQ code means: "Logical unit not ready, initializing command
required" according to my library. Played around with sg_start but didn't
see any change in how it reacts. According to scsi_device.h that flag's
description is: "issue START_UNIT in error handler" which implies it
changes how the EH handler reacts.

Perhaps the 3 line patch description could say a little more about how
to use this new parameter...

Tested-by: Douglas Gilbert <dgilbert@interlog.com>

<snip>




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d61e88d3-e1b7-44e0-ba9b-f633be0b5b30%40interlog.com.
