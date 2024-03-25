Return-Path: <open-iscsi+bncBDJNPU5KREFBB6WUQSYAMGQE5LZBTUQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F368893E1
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:40:44 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id 6a1803df08f44-6963cd45fddsf93434286d6.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:40:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352443; cv=pass;
        d=google.com; s=arc-20160816;
        b=HwGvGvungp9e439uUCqdqVuU3l5WXVQdkSoVfvFiC+NKh4YpUZqGEH1xTG9hBRdM8q
         eebiZUDaYW3BnDWj2q1k8cktNEQ7+mHW51ZsMeKfIe5F3l85ndaoiRWUoK+wnh9opzRt
         VEcFiep+5OrfNc6hti8DqA+SemEztI7FuA8V+JtOmsh+Opdn1thQST3d99JtmEN1iB+V
         xb+3sunx0PHMpUH7Y+xEStld/0aMpIux99R+b4iZ/iId+CX/wvDeO4YIy7z002K4Ix0q
         tojaA11slW+M69u4qKWZLSyz+0l3dUSXt1JuudUr7Pxl4qoa4GfKzcTJPqkwvS3SvVVc
         ncDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=t9/+se26oEsBFmJ4S2RNeRLlWljSc8A6g2ei8HciItU=;
        fh=ScqYRkVXiZaTzid4+UGvNupUrxc+oG9mMPFUjzOqZYg=;
        b=VCpfyyhWGy+yVsf1b5g0UoRJsXsYnq8kioR6VJ/BIjz1WlkvZJmmBv8WNsotsl8koU
         ccQuhJY9Vo4weKRitdh68Ryh2PRsk8Gpnb/Jeyszz5zF/UxMfaPVaMJ0AaLwP9GTCEiP
         4TELVOhi4ZUfbCo+WT9j9ODHGE0zRmxL3SlPkZQfiOkmwuXtZO4eKovBrKLloiVhP+xx
         yOATpHCNtDRQ0+ry4hGeS7/QbPc+3Azh5LMFX3W5EvXkhZ7sADqQtfYS3vOIb6i+sRxa
         YEvzFZDSQX/KlnvD4EHkSQRtbNlwMMk5F6MameJJXm8W4AdtuUEsUR4NUivo1OfN1G1T
         DWfg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tYmnEvFb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352443; x=1711957243; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=t9/+se26oEsBFmJ4S2RNeRLlWljSc8A6g2ei8HciItU=;
        b=xel+jW7PQ1nW3FKU0aMKPehR8502s5aSXdduhPR+hmSB2L7FT59nW1kw8UqCpUfgZA
         898clT6TvFvZxnbunyYNBZtaSPClwHbUH2EJDINUg8splO3+bhSbK+4RlwLUYOfLnbuF
         qc21TP/doL2gptzp7aZsBfcFPDCgoesciAgUD63eHuGXl2o0vsI3KAdRdQVv8MlpXM+L
         yCDTs4wBqc6Db3rqDSp1ilngsFXqdBhrkapL2sVdU+U+Vw2+yIWQHQwPgZM6s608tRKF
         y/xpe2DuxQy5UpdWTuT1Y2NBXlz2hibI8fbC8IouXIIyJePNWK3AQ9rjzI6sCEe0MTfX
         eJOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352443; x=1711957243;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9/+se26oEsBFmJ4S2RNeRLlWljSc8A6g2ei8HciItU=;
        b=PGkG8Ninm5yWiR//XPGUwQHdSAhaH5oN3V0vGB6DqNVuqKg2ifaCeOLBe19hplTEDI
         XKNFSroT1Xv38nbhjEF+ninU9/UhS6SIAnTsdb7juWQFAJAzPU0NZiVpXno2vP1az5GJ
         e5FKtKVhvUakqVB57uDAz/m7uldqcJezK621P5B+ebEyckRv2mSicD8Z29759hcBeNnN
         prQklwlYYMBeioRkEM+3KU2zmMN1pY4P5UtGzSUsMxfgmyKOWpphnJ35IA1TDHA3tyOg
         2aQyOAnuljMXclFnYy2TxniH1I+c2BRlPmODDzHaf8w038/rvSYcR0YuWM0wdF4O5wo3
         UbFQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCU2VpbSfEqJu63N37ckonHUQet0lFiRero64VDsM/8Nvm9tsTQrXBDtiQcgLRonEi/hBjBERPBHBuOcCpP68xcqNYvqMEkSz4U=
X-Gm-Message-State: AOJu0Yyj3jNYuIm6tFoT0zyu0B6No2j0r14Hm2gmNlrX4CrMh9z4dBdt
	+JcCzBY5XboPP6D6JH0PYRS3+cSq99Z6BEbpijkiVvneQHjEjqNB
X-Google-Smtp-Source: AGHT+IF/vSIfcIqdU0E+/8s3RTYP+HX5qfUAX4Fx8E5VcAal68hv9GuXapXSbb4hlows0pfSgxRoNA==
X-Received: by 2002:a05:6214:cca:b0:690:b479:527e with SMTP id 10-20020a0562140cca00b00690b479527emr11049672qvx.13.1711352443770;
        Mon, 25 Mar 2024 00:40:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:4b4c:0:b0:431:5aa0:c428 with SMTP id e12-20020ac84b4c000000b004315aa0c428ls764288qts.1.-pod-prod-00-us;
 Mon, 25 Mar 2024 00:40:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUMnBRLba0Aa1z/jNLNIL9K6kDaDV+YNlO7FXlLnQFeazTV6Zc1okEcKPQ9IGPB5Zm/SEbh+/H4OUbTPI8xXBLe1Ztl/YRWi/q5tj4=
X-Received: by 2002:a05:620a:c54:b0:78a:5722:3ed3 with SMTP id u20-20020a05620a0c5400b0078a57223ed3mr3365201qki.8.1711352441941;
        Mon, 25 Mar 2024 00:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352441; cv=none;
        d=google.com; s=arc-20160816;
        b=YpYNhX1r+E/UsQqe146IuOL7LAIFLkfiCj125V0iklv5rN8G9UnEkKytzQ9fAZDtpk
         mB+1Cei6KVfua2rJTKtSeA9ielpcvHL7k9n3NLujDUdP0gdOwX2MDfkybQnUMOTdGaKg
         ty4vagw+8qjFmMj48pDjHDC0GH6WZL8T7e7s05l76E31PUCP+UxG5tgReQ1dJrLEOwEV
         MV5ZEgU1LXpq+mjSS8ZXByLa4/cxNaRiya0OMdBR5Bvd75fPbRoCws9AOn+icpziSYMX
         Z/9DTwFRBhSucg8XrINzImujBNhzaohnL/tYj+zCaoJh0jyQhdjr1r0CgFpUzdTyePi7
         1Gbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=0foDv7rN2ohQFSI4FrCwajPHPMdbg3DAviXSoH3CDfGW2Bp2BRSUWy0F5Djwccq93X
         gcuLsRGKY67nig3mBawGA1ywr42+buNnRxlnxWFoiJU8AFk3p7NnlQVh+g7FnQaK/uE6
         WDwMeAJYVWUJgPlqDNhjjPu/rnftuvuQIhoEPxs11MSOwqjKbvAgAbUHoYvs7KaNnH8p
         SSHH5iXlkeUS5SZEF+eqpo9ANlvaSiwNUDb3DQmBzA7wVZAva5dXKMDGHrZiG1TMZeko
         thFcY6W9glw5LahODGO+YXBdhmg5pY1NIc2wd57wFoOBa+d5WEQusw9EZLzrE1rrwecV
         ABjg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tYmnEvFb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id pc20-20020a05620a841400b0078a199066f4si339734qkn.7.2024.03.25.00.40.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:40:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5DE9760DF8;
	Mon, 25 Mar 2024 07:40:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2407EC433C7;
	Mon, 25 Mar 2024 07:40:34 +0000 (UTC)
Message-ID: <004fec87-af1f-4a6a-aaa7-f57406bead41@kernel.org>
Date: Mon, 25 Mar 2024 16:40:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
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
 <20240324235448.2039074-12-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-12-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tYmnEvFb;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/004fec87-af1f-4a6a-aaa7-f57406bead41%40kernel.org.
