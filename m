Return-Path: <open-iscsi+bncBDJNPU5KREFBBY6YQSYAMGQEXJ5EYBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D23E88942D
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:48:53 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id 6a1803df08f44-6963cd45fddsf93535806d6.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:48:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352932; cv=pass;
        d=google.com; s=arc-20160816;
        b=G5vIX200NfShY0020+2xlArPticjmD5gYO/G2hBoMjSEbNc5+LhanB9ksmQuClck/U
         X9G9CgVNkpIJVJHfOKibvtrPGDDH7TWJ7ZjLng8I8UZoWoH5UnQSGe3chI0K1MVHisqw
         PcRlC6Nbnqo5eTJFlamd2z1FoRFzdVx+ff+wYoCGf4DaoLm6xCNscGhsZe9SRRQawxVk
         1wQYICDOo49GGRrdtUy1UkXvDfZqTqDfu45D+A84ak/bEIWt1/rAwpL2glDmVi1ySqwO
         TUmuL8OcpXGJJWMeoDEw6mLZ2/mq2hsYWkpPuc1XZvTidjh23rOPbu7GrzZDAZhkR2PR
         TbMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=4csMxIUx+x6/CJT5QhWGJ705T/id0dBVV/uVI9DUfGY=;
        fh=9sn8sRl9wmChSXhVFD1eol7MZ8I/9brfCyZB6JOhiUI=;
        b=UkHDEOZVLCqG9LldVgluUEp2d19BN7JYclgafTcZeFHrbn2ZidrGd0KnaUyO7YLgk8
         R9mPGnJtSBMzbowJOvCEyPuMoX/NgS1AhD9jKniwQvsAF9ewWLVUy0+1v8dAMJhr/n+e
         p2H0E1FbAbdwF+R8ZX3fn9fKidpmpfPXmLPDOysPZseeeDtTTPDTBPcGOnqwZXV8O4Ck
         0b/nH699BbAR0pQ9vQZke5DA/t+osSECICiTDDTT0YWo4X83lPP2hxXqiAtN4dzHhswJ
         fEDs+73c3HuXgpuymPOAT1fUW6tBAK+TG4TcF/FDilf1mCskQ3/K5UhT6MhyphbyKrdJ
         Kwbg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SeVYTbo7;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352932; x=1711957732; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=4csMxIUx+x6/CJT5QhWGJ705T/id0dBVV/uVI9DUfGY=;
        b=mtCaWHAYHEdrRosW2w/ZpHzZ7LyFV6lXz0XjHYJ7d5FNa9lMbgyOWEmtNXr5Cf/A9l
         ULhtMkqbruKveiZOfdD9BQ9oAe2sfA8d0Nbi+KqzuEj6W/JhztGdTOTdtJFOjzKbDz22
         BcgK0JYNlVb1DtD31wTfDD5tI8tmTZxSn8AuPXISf7tmbBXT13NRC4FgV2T2WogqeNcu
         r/eOlL2mdcGKcbaPYo2KcVvCJCFF6fhIulukM9bZtCBSDSKbZoK3pT+nvo3SlDi0UlTj
         D1SH3SxCLmkYhSQycRTAhuna7bxy+8aCicB9ODOo1KuwT6ZICPjISGqrTRnvoLViopus
         9xaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352932; x=1711957732;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4csMxIUx+x6/CJT5QhWGJ705T/id0dBVV/uVI9DUfGY=;
        b=EjXOqn7zuYNv8AtPJbJHIun74nz7p9o+h+Em7UvG/TxjvC0/KP0EB44u78YfOl9Ubs
         3jpzJFEtjaxrHng78lLMmGi95km+OXTjdCi15+u5VrQrHENlCYLJC2Kf5u5gYa3h1Lsj
         Wp6P6vpTJbt0PIytc82uVlgRXoZ0bB/S+NNkpUkSPI83RsaPaxJOlUwbiBPeM8M2OhwD
         yzLuhBK1064zW2oIgEYNotY63nIziqmMhyHmHAg0BUaL/CpuICo0kWGD8szA9UhU3OlF
         NUPve8MV4fPf0Q0HqR0P9u6NxUaZRDQdszb/pu2h+RG+oL8wmCKwLhmfpxsSBC5DKiQE
         gA9Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUePeyv0D3yylZHyqNDI2DZgyhrlcyZw8LmTh0XI3Fa9q9ZKlEa9MqD0BrxjDwauDJMl9yj1dOBU8q+pKA0byCJAeF/lEWxkk4=
X-Gm-Message-State: AOJu0YxmUkg93uClXfO5pRcK6VlU9MmOfxQz2CAJifXxao2Rgsi+XIVa
	XxEn+FuYj3PmeFqvThJO2rOcvNQUM468M/R1c8yWcY8eD9hT5MMg
X-Google-Smtp-Source: AGHT+IFZe+Z9ooBsMjuIqzCVHTqIOkp61LdOtgN7QROU2iv+QgouxF17rbBknrByonaE/kovz4dBZA==
X-Received: by 2002:a05:6214:ca9:b0:690:84d5:cfc3 with SMTP id s9-20020a0562140ca900b0069084d5cfc3mr10506116qvs.1.1711352932202;
        Mon, 25 Mar 2024 00:48:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:48e:b0:690:b39e:ebe6 with SMTP id
 pt14-20020a056214048e00b00690b39eebe6ls5120228qvb.0.-pod-prod-00-us; Mon, 25
 Mar 2024 00:48:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWoDzUFejxxfsHZakbgGnA4CJIvAzaGzuV4x+6UwYxO5MMhflWv1abrUu8Wkx3zOreBMT1YmOd7G5wVxomNzsJ/7IXMm5a8hv+L3AU=
X-Received: by 2002:a05:6122:2194:b0:4d3:394b:d997 with SMTP id j20-20020a056122219400b004d3394bd997mr3301587vkd.4.1711352930122;
        Mon, 25 Mar 2024 00:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352930; cv=none;
        d=google.com; s=arc-20160816;
        b=anPqN6n7MzL5U20ewSwFGU7ZXIg/+dQ07M1J/oZ/tXkgqz5ZJWpI4Qo/bUkfbDd2ba
         74HjAIGNF8nbnFzDfO72YddE7Vmd12MYW2V2ShWezUKhfwKdf25tSuvRDm5PgPJ8EitV
         Q2uIbgrOtCmx3Zasqp80XMqqWbywoRx2ZLmdEDUI5NQzQasTKoimiWSBWKoPQSsDCdts
         ahLTE4eEiDLWuzMfKR0oTJEILzBnmlxJD8YCTjRRB5p3LHz16stdyBQ9+KduvT1FLClG
         wuXuTrteSwpb9bYACcJeWUk7j+uF/dA5zE00eudmgx1mIenJcWN3mBDlN9UMqHEQWvlz
         6TPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=CztY3Grx8a2umwG3125O6KQQY7AjP3tI7V5O8iMPyMk=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=MbzOxMHvrOlc32KVeDRfDMSea+3XQHBUwyoFx4vS0xxfrUGB4PAdam5JwyVS2/hGkp
         W6T4jQmGPpc4J38CZEENQEVWs76hz2EQwOEuv7GIqyJIYjRnjCXHMt8tHK+3foBaBNln
         MiKTL0Y6E/4mismCQYgYBsoLgZWeePu4MGdEdSbx4FeMlJuYVlUNJlFhEMPbiqvwvQQS
         nmcgp5fAczK7v0kLUnnntZohI/ZzFKJr4CTATXK8dZvD2b/FF+WvXKUp+u4nbmO7I+PD
         F5bk/0B0kJkaKyVOlI3of1ihqHb3BoR09idekru0Be+L5tti81tJ+bbEw37x/r0Q2cX0
         axZg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SeVYTbo7;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id o65-20020a1f7344000000b004d32e96f356si524307vkc.4.2024.03.25.00.48.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8E87BCE1056;
	Mon, 25 Mar 2024 07:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06BE3C433F1;
	Mon, 25 Mar 2024 07:48:39 +0000 (UTC)
Message-ID: <9f2082fd-83d8-4140-84a2-865112090a46@kernel.org>
Date: Mon, 25 Mar 2024 16:48:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/23] usb-storage: switch to using ->device_configure
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
 <20240324235448.2039074-18-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-18-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SeVYTbo7;       spf=pass
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
> Also use the proper atomic queue limit update helpers and freeze the
> queue when updating max_hw_sectors from sysfs.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9f2082fd-83d8-4140-84a2-865112090a46%40kernel.org.
