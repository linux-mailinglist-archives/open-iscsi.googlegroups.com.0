Return-Path: <open-iscsi+bncBDJNPU5KREFBBCGWQSYAMGQEHXUWKMQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A7B8893F9
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:43:06 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id e9e14a558f8ab-368511905afsf37868905ab.0
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:43:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352585; cv=pass;
        d=google.com; s=arc-20160816;
        b=mJ/OxRf42XeefIKwFg4xE7KRCz3eV08Buxmj79CMMLJ5qhVERAJyYpR5kskve1NAt5
         MghZ75OPtPcuxEuK9jpaQEBjbOv4boEwqrEMBwTy4llgkL12dtAZ7bfHv1svhjYtd0UI
         vMYzkwMSPX96Mg10OKH3hshitIb4XnmkM4ejcGZNzZBNn1T3GU6XbYGx9PTdp7n3ZMrj
         puA2Nikd8YM+UWBRZ28vp+/mAbY0WYxANmcF4HNIcXa+8jV9mcPiN8iriKrVOR/DPCXO
         3JUxI20clKsKP4aEfo1y/H6vx+T3niZfEqgIapNOKQjQGuuDOqJMpFneSdd17ko95KGE
         ooKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=S2kS6IsMAHEyOZwQZ8aVhSsUjB1qlPNCpfqm85FGIsU=;
        fh=OZX1H/cAalrTe5K6LUA+vFzCTx647Jc0vX0L3ZZy1Ek=;
        b=OUpUUwl95oOc4Zfz/QcttAs8k7yd5MP0lVdOfbLsdvvRaxSBG6BDHrbuAfr/DuH2qH
         4iyAUcWWz/hz2buC9zkFNCHscO3+CgI6dEV3k4i1MhiUr1Z1obzy2e5aRV4RyFQ3MIUR
         goYTvsaW3fEeLQuxAkIpEIv80pvsmt+S2RqT5gXbv7d+rc28nIVF/J0VtQWakY/AAzit
         sySlOzwcVpWyB5G9PvtSNxYxZpm7EzQ1xPrzSTnDRoFBih819C5z6mfS/mz39oH8tS8b
         +KM16oXLwuEgF+PaOh8Jx1KVKxeWAeKgnzBZQ4O+5q0LqUTGUrwgqFO7NNmT7KqmRJoa
         FikQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AhhgEdBC;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352585; x=1711957385; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=S2kS6IsMAHEyOZwQZ8aVhSsUjB1qlPNCpfqm85FGIsU=;
        b=h9HWgMr/7PH+K5fnQLyDdpBh4a1yLZzQcQoy0O0FWYwA/g42WKKqGbKsw25b+8npEQ
         qVk/lNWvYVzWfIejdwePjXKvd8diPnneEjFn/OT1+57BWBAsqug0NkgH1dhAQyzRXylJ
         7iiBYYrws0ao/81Vp8hdmShm7aqEnPD67XJp6a7KDcg4NbEIM5ztGvIzeUn/x3nVxWoJ
         TWWOjkBsIYTEcl5m3IVlZiwqfK1baMIHee4wIGqx+X09i9r5/X2+kw53a80pt6ANieIN
         LgVcreOabSY+2JJk13B5lfLxkl9YSsBs5pUuNstGFVqWk4Bx7Ygk4BFWSFBitFjDT7o+
         ESAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352585; x=1711957385;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S2kS6IsMAHEyOZwQZ8aVhSsUjB1qlPNCpfqm85FGIsU=;
        b=E1Fy+W5rcJ9mC/e/RO+jIjifYdFoxfVbAtDYLvfavPGsrtAMCacel/ezJ0GcjSFKaO
         a6328Be0V6djPbCdS8VZvOL1zX8ovoHD1zSBY4vLlib8MBQNo0yVYAOontyy5I10X723
         hKUQd+W8rzWbBmYlHpVAMW1BkJqp1/cV9YcL+0wv4xhHM89+w99o+L8tp+7JFKaSs+To
         hLf/I95YL29/ObTGcn/DZEEcjzpOjZcG42e3hLiQLaVAjJ0mQd9kHPJJE6Owbe301cGd
         O6Dm5Bsn5o9btOoBXKA3zHYbj528mwNAyqp6gRbjwsRcIURuzXuBA4WDn8/Vc6KXBPMS
         DEcw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXu2P6O4PKajyg2PZgCYQpyCGOKv/bn9cAvR4fXPB2KCC0dmiG/huh/+YGBScbzxhAQDxr60xeOcmekpTkOzWTwg0wiBHT59sI=
X-Gm-Message-State: AOJu0Ywfjbj9+i5YsB9aLsPUE/+nwDNLDABvuhgBNbuAWy3Hi1wHC9cG
	4B2vJag0dPPGsFvw5NID3MWi/EAL7j6owO+i5Fmv/uDsHwizaJV7
X-Google-Smtp-Source: AGHT+IHJ2Df00P51ygPgvSFqkePsnXOs6k+zqzaAxepCtzoZ/x19RZDgh50HEbXs7ZBZRk/h6LHmFg==
X-Received: by 2002:a05:6e02:1d0e:b0:368:9850:82c1 with SMTP id i14-20020a056e021d0e00b00368985082c1mr236333ila.13.1711352585706;
        Mon, 25 Mar 2024 00:43:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:c26b:0:b0:368:900c:bd00 with SMTP id h11-20020a92c26b000000b00368900cbd00ls359734ild.1.-pod-prod-03-us;
 Mon, 25 Mar 2024 00:43:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU0S2W08+rqSlkFSpP7/DinsRBCkx5H5XQO9MHAs/kmHPSDeWg3l2l3TxuM9NIiYTq6nrl4I3kyhIl0jjQ1zOIZNfLFX/6j/3MW8i8=
X-Received: by 2002:a05:6602:45c:b0:7d0:5347:1584 with SMTP id e28-20020a056602045c00b007d053471584mr2220584iov.3.1711352581791;
        Mon, 25 Mar 2024 00:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352581; cv=none;
        d=google.com; s=arc-20160816;
        b=aAi+HA8H9CLsqb/YVjsBgvnf10nniDORjZn44D2DMBOXeDSk3Na2+9dmUFY5hVlpgJ
         XIRF1S+xyz9PKnQX7uMfzRvk8d4SKOycDG1Ge9gyfKf874XS6S3hvAL6lu5CCSt3Hqpz
         dOsQ3xpNJ4uSNebdgAfI25QPwAUcFbF71qIzwYpUgIQ0O1g29ViTLr2MZLH11vU65Lcu
         cEO/6a6VrO0phOAoV2ELRAQA4S/Fgdt+vTNfwwmkkJkpRNDVLU7YAyCp/z8hMNWjgRO2
         Q+UBXfbRzwmmQPQisUS34s0X3ksRlWpoUGgVwATMOcfToXWDKyU27FyUMIJ9YDrqbVAe
         nheQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=MI93oeoqJCPguDKuM+TTtcEMnGjehV94Zly9sBctWGP5ijSnQ1yuSFWVjdQ6wLwyCf
         dkIhOtro8JT4JfIMgOXWfk84qlM3vPYIdzFfadA/jtBQLtLOAWFlakVhqpCQmv+xej6+
         egwz7WCiSmMs9pHN1sgdJgBHLnYa/ykM1v3uHdPKgJsSh7a8TmXu8Rxs90Ih/9Nc8Y/v
         SGT0xJL6yeYPYcStNgzhQQCUj+HhLdKuYVXsxjGwesIxKpu0Tk8LUvrCSBX/p/kDZrJ3
         AVPrTzYK3DlWV5dfaSZ6tPinN46bH8AVa0A+BmkgSOERxpZ7IHdwu/JEbbfjS/9Gmnm3
         11iA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AhhgEdBC;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id bc11-20020a0566383ccb00b0047c2366f4casi51805jab.7.2024.03.25.00.43.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0C361CE1056;
	Mon, 25 Mar 2024 07:42:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 331CCC433F1;
	Mon, 25 Mar 2024 07:42:52 +0000 (UTC)
Message-ID: <1890fdc9-41e4-415c-b210-f549e0b8436a@kernel.org>
Date: Mon, 25 Mar 2024 16:42:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/23] ipr: switch to using ->device_configure
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-16-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-16-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AhhgEdBC;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/25/24 08:54, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1890fdc9-41e4-415c-b210-f549e0b8436a%40kernel.org.
