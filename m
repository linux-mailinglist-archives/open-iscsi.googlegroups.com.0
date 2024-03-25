Return-Path: <open-iscsi+bncBD3JNNMDTMEBBGWAQ6YAMGQERZWP53Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F94488B18F
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 21:35:40 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id d75a77b69052e-430ac6a7aa0sf87295801cf.0
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 13:35:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711398939; cv=pass;
        d=google.com; s=arc-20160816;
        b=1EUUbWH0DTayafd6WAVjPdgj51vJ2umfaGsfTJP5IxI/es9LKpCH3LOqClyIl2o//t
         c+wO+LTApzT9Npev5r5m1d/sdqT7LSnElD03O2OvS/b7i6Nylw4pIPBI8wVm+gVdDNrn
         MGytakAhy4muhAxdIvQ3HT71k9Bv9H261NEZr19HV64g3tJDwNzxifzN1NrNRr/YM94V
         WnJ5bYu1ll48/pdD56sNOCMcQSERxLUfbG8R8DRhtTESxr3gmhWvd3FnTbxFNPqASZxU
         gwV5qeZ0uH/t0hVMe2FtfZoOG4UJk7J23RM0PK5MohloLoIkJUoiOMGPXp8jZdamdnkJ
         TNVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=gGbDpq3psOh7WvNGkjx2U7H5l4E/GWoGJGvxV4SXNxs=;
        fh=moXuK8AI/21XdSmabc+5vz/c6h2bNbxt4a0cMm/cBWU=;
        b=0By+9AzzM8AfsRmuNWUh0QDUCqWQDZk7avDNBRO/aWofSKHCEQaTppEmSJn8+hR4bq
         44wG5VgQn6El4qR4OYJxJSMfi1kHMohn7vSIUMJH/O8MSG/muJ16uiQWPRRdj1sCcqDu
         kqgsNGmwGlUJpxVr0W9mPhdv+wWTTBq6iyqmRkieABb8lC90+xGvU0MiIIpTBmU+WQC5
         LjYqI8dZAztA8JMmRhjtiGrX729XaLs49Ld+kg24c7UBj/aex2nOugF8oYDroqJ6o+NR
         Pwm3WyOSu2avcIlc9xi09wqgz9kh4+rWOfi1cx+WH4p0vebGePF4VUQjeCcgJQ+JAh0J
         H95g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=CwOss4Dj;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711398939; x=1712003739; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gGbDpq3psOh7WvNGkjx2U7H5l4E/GWoGJGvxV4SXNxs=;
        b=feuQkZqFgpxTNCWaZ0n1iKM3wN+6rJLyDNqoZvWbCBMHldEvNNhQuwL0cg1j+3mzmO
         6um8lGd19Avpt96Y+hts6dtxQ1c+FXnwwS0ch6epqQyZJlp9O02GWbyrt4BxmxbTQ7ye
         A21AJfVbOiKfnCbGZmHPN3Zox1qu9NS3HQ7sQiF3ZOGLkFvNuan75Y2CJWLcO/CfCd32
         h+0nvfKcA+sP8Nn6IsPdK9YqgVwa3FmANzZTWpQcXXm1Z7xOjZFLC8+Sb/GgDXU89WSb
         fEVpgL8uZr8KNisAVknrljTRQ/o68Y9gB197jcqWVzyypKygbC8AqzP84/Hnf3CzvllR
         pU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711398939; x=1712003739;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gGbDpq3psOh7WvNGkjx2U7H5l4E/GWoGJGvxV4SXNxs=;
        b=I00c4wuiq7sl42ar8+DSOjuKvIaHe6gEDHrUrkezUQftgreVjEneF+nudDwzwDgtpl
         y0TQQXrebwQZ7oslbHpYJQO8zPOSmX2sGA/fjOEMsUd9P3VzmjIB+HXXG7xi6fRTRKYO
         wgRPXyKUOyBD3r16dsGvMkzS/F3sGfQBvDLHa9XW0A5NesLUuAgL5vzzzZEp4JvQGIqv
         E/BSKVxrte46oCHZY3zydLbjpWRFpAHqICirmyc2IeqFzrfgtfROAqjHyHX5BO+yHf5L
         UAWeP2ZiP2sVCqRImjzMlj4LvCuVYpLcBmqMZNCM3xUBiw0LvmmtpFXI1gQPQlHwFeMU
         ORvg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCW9/ED2ZZp1BVh/6ldoe8OU/iW/EfS2j+RS9/opLjCpw8z/VNE8tpiW0EpwTd87d9pt6kIXLAv0tmMt6kU1HaEyPRRExyXaNaM=
X-Gm-Message-State: AOJu0YzNwe0yQ0FZrfjYE7vh9PrM9Ah+f7HwMLOa1wtZ7kwXU1anuwx4
	ehPNicahWvG1PsSfPjEMmTkpiqm+p5tsPjEudL+R/Ksx5XIRSgyu
X-Google-Smtp-Source: AGHT+IHbwVEHMlFoMgGtBVYnnjRd7mRVLOzIcsm2ty0b22lVFx8zuwQ7FoOdo5Q0OqnkVeP1MOiQpQ==
X-Received: by 2002:a05:622a:1011:b0:431:469e:2231 with SMTP id d17-20020a05622a101100b00431469e2231mr9584860qte.27.1711398939538;
        Mon, 25 Mar 2024 13:35:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:191e:b0:42f:512e:fc4e with SMTP id
 w30-20020a05622a191e00b0042f512efc4els11108568qtc.0.-pod-prod-00-us; Mon, 25
 Mar 2024 13:35:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUxxCZIPsiJLIOPdj/tyXvYebsoN7SYmCHYtB4gAsCdIIt3LymhKM/MfkXYP23Ni2a5dQjXauAKZu6cw0iWp6fCTV2d9OdL9trv5vg=
X-Received: by 2002:ac8:57c5:0:b0:431:466e:591f with SMTP id w5-20020ac857c5000000b00431466e591fmr10997334qta.17.1711398937451;
        Mon, 25 Mar 2024 13:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711398937; cv=none;
        d=google.com; s=arc-20160816;
        b=rfxUC3/geYsOWJOIuJBPYguv12O9eO9JJ8finT5gWGdvHXqiqVL4q95Ulxu7dunUFs
         fQbG0YT0t53E45kFhJ1sH5PzmHrv3UstUr9vxdzR7sde1HEQcQys0XdmalQYD4T4rOR8
         rBSpgGy/k2z0KqOfuXB1cEhotLkkinc/w1IulC8M+2w5ezEtiTebak6rm+BBiM6Okkgr
         gQX+X5Clj2EH1v0t7srHM6cJa+WxBjvdPQqYbHlA935XABmyHixern1laamlQ7VhgYJE
         64cart/k/cRUBHWKyVAIpt6NTfr49FJ8MnTo4QsqCDR1eQqxxsONwxleDB6oeV2WmtQo
         g/3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=QT9Io8KlSjuHM6Qho+N/CED+XBtHtFpIBkOTBJKm48w=;
        fh=ZF8T/hrxrX+7Ws2prm5mPVJd75XGm8RH7SBtPTVK71Q=;
        b=JhykmnymMGbKQ6wORqNPBHZiBZmRXv8AUVh7sGfu2KPv3OyPNzphDcOjtcvhfkFM2F
         jX6KG1hwlAiyXQ9IMlcIBKoRdUmNECXPQHM3q4vI9ssYF9ijEOVcmVXoPBDcVBN+rzJb
         3FXNPtsH9P+djxpHBT50KP+M7iHuiB2yz7mcoc0UW98xo+NfFTmu+gTA+aIGY3mpTEnJ
         xpsMYG4FuKGqlhABmkqsYK/AjBwFl6MN9nBlOaOXAn44IYLN/xjPN5UXZ3iYP8xtKiie
         v493HOhHCnTlp0XUGPl52aCRImuPfS3aK7D3UfC+LDzwxqotNb8I1WgrsBJLvB3lSqSH
         3AbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=CwOss4Dj;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by gmr-mx.google.com with ESMTPS id y7-20020a05622a004700b0043135d5d916si452155qtw.4.2024.03.25.13.35.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 13:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V3Pp04KSNzlgVnN;
	Mon, 25 Mar 2024 20:35:36 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id qG5C0clMo2Zv; Mon, 25 Mar 2024 20:35:23 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V3PnV22fmzlgTGW;
	Mon, 25 Mar 2024 20:35:09 +0000 (UTC)
Message-ID: <b3ee2dec-3258-4c9f-81d8-0a266128b9ef@acm.org>
Date: Mon, 25 Mar 2024 13:35:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/23] scsi: add a device_configure method to the host
 template
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-11-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=CwOss4Dj;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted
 sender) smtp.mailfrom=bvanassche@acm.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=acm.org
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

On 3/24/24 16:54, Christoph Hellwig wrote:
> This is a version of ->slave_configure that also takes a queue_limits
> structure that the caller applies, and thus allows drivers to reconfigure
> the queue using the atomic queue limits API.
> 
> In the long run it should also replace ->slave_configure entirely as
> there is no need to have two different methods here, and the slave
> name in addition to being politically charged also has no basis in
> the SCSI standards or the kernel code.

There are two methods with names that are politically charged:
slave_configure() and slave_alloc(). Shouldn't both be renamed?

>   	 * Status: OPTIONAL
> +	 *
> +	 * Note: slave_configure is the legacy version, use device_configure for
> +	 * all new code.
>   	 */
> +	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
>   	int (* slave_configure)(struct scsi_device *);

The name "device_configure" may make people wonder whether that method
perhaps configures a struct device instance. How about using the name
"sdev_configure" instead of "device_configure" to make it more clear
that this method is used to configure a SCSI device?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b3ee2dec-3258-4c9f-81d8-0a266128b9ef%40acm.org.
