Return-Path: <open-iscsi+bncBDJNPU5KREFBBSW3QSYAMGQEVEZQLKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x1137.google.com (mail-yw1-x1137.google.com [IPv6:2607:f8b0:4864:20::1137])
	by mail.lfdr.de (Postfix) with ESMTPS id F040D889457
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:54:52 +0100 (CET)
Received: by mail-yw1-x1137.google.com with SMTP id 00721157ae682-60a08eb0956sf65191377b3.3
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:54:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711353291; cv=pass;
        d=google.com; s=arc-20160816;
        b=YTfPDOzh4+8jpaEeWUWAcwE8I5aewAvwKlhALuFPsDUNZiGjYxcma5c2omYKXdRN7U
         kqu8fUWyaZumDUm1BUgT28xO9zYiVMgIjP5q3hZKuU8Yk7hS/ka2t5tMpewWwfIvP3cV
         eEBlPUQ+z/OaiZ5LnqodQGo8RhfDi8SM14Arigi7XYFwao0uE6U+2I254MkkGjvQGbwu
         rL+xfkgoqfT6EomeX5rj0Kqdw8dhBo7M44IhTxUZFE6LWmuvuyHLYwBvjNS+GiJv7+lB
         twSrZRp9ApMdu7mkmkVK99Ukv6WGIbxlzpuZy3i+fJk5G05HcIhpIdxTvox8bC74OaXX
         PPrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=cFwF5ZOuoH8rUltCWmjV/lFVIxSwuRL6NrrSqynn1Qs=;
        fh=eLfBNl1am0L/MnV92Exh8EYH0JJrgkK/2NMqX3tpsH8=;
        b=VnpvQEqt86Hcu7Q2Vgblsq0cdmG1tItqQuPsVSDtS8qXv31TpaH5gvmlPRoIo0y054
         HlMG1QwyfGFRR4PjX6+N45LOD3HiCfVXD/+meCEOEp/ZqAWUzhmk2ujFIvibCStQ2L/p
         BsrPXe/9yENu6qyB4yGl7sJteuDdFbkM+d2521425XcdYCz3pIo++9ht3blPSGYqvoQL
         oQpT4EtGaSUiSWJo4N1NGo5npndn8H/Pq/GrSOXKy0xeUnku6d2MsFH52csYS0g3rw+L
         y/meFvnm44ef0M6vMV05lsz5v/udbqZBxPYqkAo0vS/ciqQZvs2vlmqx1Z3SdftvFNUk
         7fXg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j1xHlxFy;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711353291; x=1711958091; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=cFwF5ZOuoH8rUltCWmjV/lFVIxSwuRL6NrrSqynn1Qs=;
        b=EP89mDw4kRm493BL5fIK4zOuXIvy7r3Qzc/rEoN87SZwDolO7m70O00YG2Fs2EXXUv
         09s6Eo3LoNRqaYgwXLTBfHjT/w/CUkwQH+L3iCDadMlzzHJlOHLiRlcc9AWxCqs+9o4f
         tUAene3gl4rLj2c/6dicU3e1DTZTeR54QOg5nIv79i8VrrAkAi+tSAeH2BDwLFbXDexK
         E55Fyw/OWcoAmk2jPK/jhbxzF6CA4QhoBdDXa4svXZ1gvRmp7iEFS0dYeEvm+pYgv4G2
         awRFITDJnYGkzDGUudkoDDaUc+MUtf2vfeS3Wx9xtoQfheJPu/l46i66J2fvFDPl/HD4
         cYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711353291; x=1711958091;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cFwF5ZOuoH8rUltCWmjV/lFVIxSwuRL6NrrSqynn1Qs=;
        b=K8ZpsYQ4FhRvcLc9cDII6erYaz+fY2whgL/krmDH7nm4jkI4MeYhT0cxnVqnwIaTjm
         7mC1SPd+N/uqUh4I4O+JsZevVyMA9pAco6QowRiEtDP86EUamjpVgg1GC5s8C1F9ApzS
         8uC1PQ+IGoO+t4OFBwplyviyiVF6Msm0xEGYSt4/bikQoiyAA4fRNYNUAhmjVpbSzAo5
         AnvN/ycrddFqTCkayiZfhJO5OBc04tMwRRKGfZg0hxZKoZwHUdpnyC2yY7SNi5lncWVr
         d1UpEfkNJXqmBB+mXvc2ZyfZixM6nHR/8MHgjfIDt8QeQWeC1tszrJSgU8QCEHWKMzA5
         p1/g==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXA3wzAHJR1uJ+vRpFIgWLKNhndQ1tL18sYSswi6gAEAHJo8BkLRDSTtMxmqqwht4XQr+9EOYO9eOTPV5vgIRU6iKxqVdWoSqk=
X-Gm-Message-State: AOJu0YyzKq2Y+u8NcEx6UHvrrRcJmwOanC9co77qgPIlORjAKh8xYqgq
	+LHuiU8rDMgWD2xOzQKebKAPlj1pAwU97Mw8EFdVwwGvczluGrQb
X-Google-Smtp-Source: AGHT+IFwK7GUaxpx6YSBSkllMUCwBDHLzD4wR8caaKP1ozaNvOauJhoF7cCtDmt33OCKwATr3cAMUw==
X-Received: by 2002:a25:951:0:b0:dcf:9018:67 with SMTP id u17-20020a250951000000b00dcf90180067mr4744652ybm.42.1711353291614;
        Mon, 25 Mar 2024 00:54:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:e0d2:0:b0:dcc:4b24:c0da with SMTP id x201-20020a25e0d2000000b00dcc4b24c0dals1273385ybg.2.-pod-prod-02-us;
 Mon, 25 Mar 2024 00:54:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUPSyLXKW+58iLY6DOruBCl3kqtx6L9PjLum9yibEwUkNkjzRjojqWIS1Hy6ThJHpQ2lLpP3jc0hB8sffWnOUEFfZkjBzRaR2aftAk=
X-Received: by 2002:a0d:ea92:0:b0:609:ef57:2266 with SMTP id t140-20020a0dea92000000b00609ef572266mr5773000ywe.34.1711353289207;
        Mon, 25 Mar 2024 00:54:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353289; cv=none;
        d=google.com; s=arc-20160816;
        b=QfpinBPSQyfenOcuqY6G1cAFAUIzouvotfFYEhkahtlPZgEEytXMZrZYrN4GNPa3G9
         JhWnwnpepv6Uj1f2gjcdQ4xhTVLVChPcmQVMTQ22TsnhXs1klBMMc+CZJ5IQzZfZ1fbj
         aCOBzmDeKZ6IDhohC56WMUysM8ExN+ofeIXPOk24FkxcPiFAuFVtgIttuNz7oF8TW/oY
         DiRwNwcPUxZQSxu9bF82A4N0cDgMjmdjt3OMx0yFq8SNVlUTy6jrg434Ir2XotZskV0o
         TZjCLPrIBaZgPPkgk9aTgc+7byV/fxOPrqOctpDczm88RnmhlZCmIaSe+394GxgNTMq7
         +RnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=s1qpraX8hqZSP8Yj9uFKmo0yhzZ4sw4wgpEE/08Sw0I=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=zCqelE7r6hGhTfB4sOYzqxiSw9sBuH6Wj796qAIceMkg1kTkvdrTNCopmuEYCfgXjv
         tU11SJxkUM/XIHd0L/Lk3SCpC295cCeyIDVn3pI91QBlu123pUdTQ8n4YSq0n+etuopG
         HYwN0ymKgZRZKxeE9PTp9RkQ9KsIbGdC2CjRCq2K9sSEkbuUuCVJdbjklGQjZnxEe9dH
         QIigWZv2ZSed7LA2gO5dGQB2UZMZBcJVkRfJ1sb4m3yaLDHDxIfboKGPXi5pxfOeL4CX
         XMhZiIKmQ1eDzwrR20e+Jt9Ot0rwZdDNyI84IB9kMKoy24qZp1fR1XrO90prrFpb08Q7
         5KYA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j1xHlxFy;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id f7-20020ac80687000000b004312cf1b564si333171qth.5.2024.03.25.00.54.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:54:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 75287CE0ED3;
	Mon, 25 Mar 2024 07:54:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86033C433F1;
	Mon, 25 Mar 2024 07:54:39 +0000 (UTC)
Message-ID: <66169fb4-efeb-4da5-8280-a0585537acfd@kernel.org>
Date: Mon, 25 Mar 2024 16:54:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/23] mpi3mr: switch to using ->device_configure
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
 <20240324235448.2039074-22-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-22-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=j1xHlxFy;       spf=pass
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
> Note that mpi3mr also updates the limits from an event handler that
> iterates all SCSI devices.  This is also updated to use the
> queue_limits, but the complete locking of this path probably means
> it already is completely broken and needs a proper audit.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/66169fb4-efeb-4da5-8280-a0585537acfd%40kernel.org.
