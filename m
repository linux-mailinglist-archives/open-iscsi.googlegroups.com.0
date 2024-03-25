Return-Path: <open-iscsi+bncBD3JNNMDTMEBBPXPQ2YAMGQE6JDWTIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5EF88AC14
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 18:43:29 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id 006d021491bc7-5a5547dbbc3sf1028954eaf.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 10:43:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711388608; cv=pass;
        d=google.com; s=arc-20160816;
        b=rB9knGhOHb1k0kjYchO8CDpjHABWsKVd6OQLBh8voCD+qPAhbeQonzNhajYLGpC3/w
         J+dKmtYd4aIpseMSM/rgaaYC9AKKs1TMeWtbYcJTgQoy+OhAObRx2A/b0OKgnVn1m55E
         QK4bTYJryEi/ZqqqHkZqPWRNyWgTLpwSCI0TbXmo5sJp5zb9UJLVbtgYKtCV1JiKYjNq
         zTBLnShSZqQsXUgDb3iogtHh/ayhocOJOe/pVlsATCVrrI3kfjai2T9H47HW25MFBJFv
         fW8sY3VhhKqwyeYsQ/t1DqB7OKz1TOxr8RmgeYSMboeHHfC+7fZNfB26DTXQlpGXHZot
         B7vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=NnG4gEmwYwtbF2COp9X0A/cyTxkVuhTB1HcCmNxx1wY=;
        fh=PYxDTByIQb/jDYNdsANBPNMTRkOGd6TQShfZcwRJueU=;
        b=dSPH/sLtoY0h90RbV8v0h8eOgUSimuPcomf5JHIcYWRoArJWrct/71KvnprJd7/3XE
         U32TArccc+vJ7HXA4uQHMWdLRVQDcoS+jAX6K6dR9iyBeiYBkZ/vMiiE6Hj3tlGcNl/w
         mh06E6uBnOYdy7qYAd4oGY2li4S3+ZkJ4dM2+kVrBg3SB/X2EsCZRX0NyRtckieP8rKq
         hZPUgU241qDstqffgjvynpsD5nJPDju1KBRHE9JXsUIw9pIsf8mAmWGUOLJeC9c1C08y
         Uxbwsg1eP+oy6a5GgpYXkI4kdYo1zP7pujqS3FY+hSIF1IaYU+uBkH58Qy/5N7Yb9rSX
         nHrw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=yEmOz93X;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711388608; x=1711993408; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=NnG4gEmwYwtbF2COp9X0A/cyTxkVuhTB1HcCmNxx1wY=;
        b=EVuMj8hC4qhjumS4t46uOCeTXuYvzWo/lm6Z+NgXObaIh78751l4AYY7skjHnXrME1
         XH/u6MabC+f+vpJoSKYvp6tuxRPXMcwjPpQjVPt6J0SVVWKvg+7Ep8A3W2/uwxrrjuXD
         AjJcPJKlZ00b6YPgMQHffGYBaqXk5PRhNJIwTh4XYOJusyJRAJgQEtMJQJI0h3TzupRw
         OJKPUx8N/gLTpP5CDQmXqBZx6kbTOFSNvvEB4eouj9aQounNoPvIAucyUv4zFpQYexLu
         3Z7JhmkZgb+MovTFOZ076mOTd59OHldcynoc0iG6xwRTBB8BAyugFrnErdyrCfwKzC2j
         39XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711388608; x=1711993408;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NnG4gEmwYwtbF2COp9X0A/cyTxkVuhTB1HcCmNxx1wY=;
        b=mdlVcPGPZovvNZROFnm31fGbjyQTaKzvp5qqIhRVsd+4rOpb6ZpTVLHEK9mOV1Qz/1
         FYJPKqEvwcn8hK7w4hio8y/qB56ie/29Y0hvxw+CWmw8uvGzacYazHoZNYsaKqtLC2ns
         S10+dkgAixlN3ib/ErhWgf5BC3xc2SUbAtvbd4okKORXty/PzMftlXHMuIRx8ZMfIXhY
         On45zDcVKUNhlL5w2zA2E8AQnHxlerFDTo8CWKk44XLg+Opc9cvo1NO+cyRTVZZjAK8i
         AIboKB+qaYKcAzbrOB6C/N3r6KYejqZ1mMkotYgwjw7miMiG4CmRa2MC8ap2EZLxzfcb
         WwTg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVYKcWd3uaczv0a35flgrRsHxbvosDr1hBRstP++XXmiGHjNSHMvPQz2V7IGVACUCDui6fmku/bR4U64qpNV4xLJcuJVhnjKy0=
X-Gm-Message-State: AOJu0Yz+iiCd8jMueucmBe5MmrVQh+FJuWuiz4P1QcKMkc9uJ9d7Deum
	WTQKc250EUyww8pAfB09EO989Yg+NBsBCbDyyYt14wGdWV1B6XW5
X-Google-Smtp-Source: AGHT+IFfzRYOWOBZT/OBmDQRHdMGvnGh3NOZiZwkUuocWKkAArmu1PR2mDAFvYzGMagUHHUE9TtRfw==
X-Received: by 2002:a05:6820:20e:b0:5a5:21df:7ef1 with SMTP id bw14-20020a056820020e00b005a521df7ef1mr7114034oob.6.1711388608165;
        Mon, 25 Mar 2024 10:43:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:9b89:0:b0:5a5:119d:3afc with SMTP id x9-20020a4a9b89000000b005a5119d3afcls3186548ooj.0.-pod-prod-06-us;
 Mon, 25 Mar 2024 10:43:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXO2aTz8TvzsRi6vh7g2BIIGct2B41b6KCZNbuRBXK9JPTrtiO6EGwCaNbk4ODqElzCyY83T1vOvCMco9MTKWjuAKZTBX8umTbd+MI=
X-Received: by 2002:a05:6820:f08:b0:5a4:95e6:f15c with SMTP id eo8-20020a0568200f0800b005a495e6f15cmr8206939oob.5.1711388605687;
        Mon, 25 Mar 2024 10:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711388605; cv=none;
        d=google.com; s=arc-20160816;
        b=OmTy9CEZ1kYcthsKKrcuRE5Soi8zxEtff06A7+WzXxpGIp0hO2/JThtQv4lLBpXZfg
         HpNguk7VmUB5KLreGpnruvibWFYFpTiFsgHh9b2jAf3TSjDMTY1rp2atB3aV4xodp6PM
         rGGCjDReYJU209LyXmiJBdlOilIkPHgwkjyUi6y5OdWukqZWmQvI6jQPAm4SwBEAu18F
         i7lt0mMHaNhsYCMC+mR0RhOeValzsk5PeaUa+GNJO88Dx/lN2Ph8mXhLQlUNYH2CebuW
         LMjj/nVptjhvEJ8/JBwUTdv7w+z9ujUW19YJ625r8U43gbYS8u2so24KbflgLG92U/sQ
         QIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=KvNYZd3AQJEKxzKSsUqYfPUgEx64KpoOhil2sUQcMcA=;
        fh=ZF8T/hrxrX+7Ws2prm5mPVJd75XGm8RH7SBtPTVK71Q=;
        b=TxitHthkI+TrR9JjtiBIITgwbfLO+8/Cp5WYADluLiC2wau2Nl1cL8a/rMeebd3JCV
         L6tXy6F/mSq8Yl4En8gwUlhv9L90aIlDY+2nQvUREGCc6vIgEBMYGDu43qsdT1IQH8/J
         leWpTPwTem1mQjSMpflrRU8oA2fWnY6glUEZjItQPWakPUz+Qb+cMSCRjwFBRBc54lmy
         jSDP9OLXdXQDAWp40wjlBuxWFUtKwKHOm27zLcrjcsKP1rVKUtIUmjFLZx1zxX9IpNDO
         t0Syn3qGGfL3UT+/xOBhcdAbr5OTzVTd0g/ucVKReM6cYdofKgEQM7EMSaMZQ66bmBIc
         x5NA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=yEmOz93X;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by gmr-mx.google.com with ESMTPS id f3-20020a4ace83000000b005a4965efccbsi267002oos.1.2024.03.25.10.43.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V3KzK10GMzlgVnN;
	Mon, 25 Mar 2024 17:43:25 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id 8WkJ3RETGwdw; Mon, 25 Mar 2024 17:43:16 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V3Kz34YD4zlgTGW;
	Mon, 25 Mar 2024 17:43:11 +0000 (UTC)
Message-ID: <26f51e14-0625-4225-aaf0-f4f7bff5c2ba@acm.org>
Date: Mon, 25 Mar 2024 10:43:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/23] scsi: initialize scsi midlayer limits before
 allocating the queue
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
 <20240324235448.2039074-5-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=yEmOz93X;       spf=pass
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
> Turn __scsi_init_queue into scsi_init_limits which initializes
> queue_limits structure that can be passed to blk_mq_alloc_queue.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/26f51e14-0625-4225-aaf0-f4f7bff5c2ba%40acm.org.
