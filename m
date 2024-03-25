Return-Path: <open-iscsi+bncBDJNPU5KREFBBMWWQSYAMGQE5XWMZPA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BC58893FD
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:43:49 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id 46e09a7af769-6e686728cc6sf4891643a34.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:43:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352627; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9ewUGbo4HrOShibLSjHcYnvQNAMbcvJPOvjV7c4iBdtGOehKFs6vS6w8wytvLJfwt
         3SI06ep5UH/DtqIUv49O8920EgqcmZaw8iGhPOMIFVOiB1ePxrt0Q5qPnuODh+zXwZzv
         qY26al8dY7Zml1smt1DIKZTf/Mt01feqtnPb+YSsYrz4+GxwTzpZn4KfPwWgJOIiPEu6
         vbfdtN/SHzisyVfBLTfQDIm1QsyxoCvSgTNFJuITb1SXUe8ch64qFLWaOr54NG8E/Nkw
         XFA4qsJ4i3X5BjrUrzgHPvebSwdYjHlHeR82X1jet8QCAlMZ7OlLb34Faho7x3c+UgvP
         xI2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=r+d0BmQV2nJgNL5p1RrB/eEzGhOpf4gr1aV/jVS3JII=;
        fh=22EMsPcREFtGtnVAQV5mnFRlRGzJW8zti/tocrJaMRo=;
        b=IY2SY+5hp47B/ctYuOuIcS9jtekWHy7K3DMK+8ijgbU8bPyiTeUly1+NxCdn7JnLkA
         QN/QIEdTUtfOxAnuNeWlmAE75WR2FVxWHzFGfSpL6gngCf9ksEqPR6eRwtu+kzqsKdxX
         k8+5MN+VSCpM0mkaVd0rnMGvNbppKfvuchxjTdkaI1rTc/SQ+Qf3Oy2iGWTLGqBNfBaf
         4HsvNJHKXbYwXy6S1scoHitPsmkfqfFq8PrK2K4CVOAl4vPpjGfdyeQ33U+VVMDQW8p/
         GCVfnmR7K8gUgqVSgek+DDQtWfTnoJG4xZU8HghGFZq3vjK5wzij2LortTqa+rXMSacd
         rGTA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oGjvyQMl;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352627; x=1711957427; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=r+d0BmQV2nJgNL5p1RrB/eEzGhOpf4gr1aV/jVS3JII=;
        b=a0McX+H16j0maRdHvdtscqqXkP+Xk47Y4P4OkjlvOt4gtpOvSUMGue/5BGq5G+wx10
         lESJQCvs94EyWptwFfrOAEvFqAc87mgiJxQnXaLZdjUmS8nsfuelyWGcmppxkv1iDj30
         yKD7LNwnVgm8exfYMQVJacOim+D+/OvMI5JOb8Nz/hzlk52NEGvhOuQ9ZBgI+8iVAOwY
         SWFIAHquqq+R0mlLeEC8l8nKkHPJ2aDYmaIPs2HnqXg2gUvxI1EbMp9dgB2bKlIEDq9P
         oFF+R+hEuKEsMthkZomtquvaMivgwiaqCbfNVwbuvFNoW0Y8EzBp/JpcDY0Jsc9Tni3/
         RdIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352627; x=1711957427;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r+d0BmQV2nJgNL5p1RrB/eEzGhOpf4gr1aV/jVS3JII=;
        b=UUl0l474ZpIrYs47Iu9oIqZyxBuMzvCSqnsZanvBAMxA3b8okGGhjLKIuMwkQ+uTQF
         ltUYan/RkaoMliB+3Eu5UkCgJlQ8TfPOd7JDcDkL43vMURgyb/kJxQsB0iLj7dGLKFVv
         178YFnENeQQblyK7aMWW+bvGcCUl5HnyXJwij1IBZMJibKIIUIbY1NOYuPkVRdACR9tC
         URjsVm37tj72pied+RAFTIqdORcjI7t2Ni4PFnIWQr/Ciek6cfQQm2zNtOVOuYJGY7yU
         Y/35ytTq20shSVPYBeQ5xxwHdnZLHc3Y706/Jd329MEn25L6/pin4lUw0ERQaQtjIt++
         Ynyg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUrX61qaG+jM4WG27rFYsnYwGSWXsMhQqIWrlR1JZgiTIkIcEd+uBLuHmQXnwr2W3MoJYG+23X39vycXA+s134kQRbi1C/ahtA=
X-Gm-Message-State: AOJu0YzM8Vgz8FIWziCMcx7I/wOTjhnw66HQ9fU9CuRTX3p7eb3T3Q5j
	Y490Bs0zVauxZd3M6iHejMMkT90PfuOY6dDASh30mG01F5QAYB91
X-Google-Smtp-Source: AGHT+IF4T/IlSavJjXR0sv/GyQpDXZuNMg/pLPSmSBZXed61rtl4jqoegW9XLsN42zmlXQRNsGokiQ==
X-Received: by 2002:a05:6870:6587:b0:21e:a2c0:fd1 with SMTP id fp7-20020a056870658700b0021ea2c00fd1mr6819194oab.34.1711352627612;
        Mon, 25 Mar 2024 00:43:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:a08:b0:6ea:a56d:7868 with SMTP id
 p8-20020a056a000a0800b006eaa56d7868ls895058pfh.1.-pod-prod-03-us; Mon, 25 Mar
 2024 00:43:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU1DDv6hbTQoI8Biz4rhu4KC9k4+7WjOGwhxhLpsDkOhyVip9Nz271XYEOq9P1ZncGHPkNueUHvFhGDBKdjUCQzFQyCyiu1ALiHn+s=
X-Received: by 2002:a05:6a00:cc2:b0:6ea:ad5e:f4b3 with SMTP id b2-20020a056a000cc200b006eaad5ef4b3mr2717950pfv.23.1711352625242;
        Mon, 25 Mar 2024 00:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352625; cv=none;
        d=google.com; s=arc-20160816;
        b=ROFLfN1VVuOqYWLl/Go0UdMeL3MCAWrHJzvsWGYPK+aTxyLByi82RhvGp+CX9Mfns/
         03bH9wAesuEXonXtJvUTNCbXGSQdlMGivWZvD3c8/ioL07VkWc/LNGGD9WLcEYP2tHd3
         CjoaxqR4k8yIFndMrnZLDZrlO0MS2KNAnmLYl6LZzQ/4RTp5DhyNyvFtcmupcjdHqJ6t
         spnSA+C1Wx/z9I+bht7dndg3jfhFifMulK8J3A0I/RVfguQifP7d7MCWnb9uMF8y8awt
         ZQrPC9SAyCONNpfHnLk4RKnJWRkG+f7g+DmbFcREd3vk6Tl1WvGpD5TsjchxAuNBkbZP
         5wJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=VcZX8C9eHNx2ohH3Vd1d8uDw9cE9WwS9tqBp93T62VrBMPmi5oVF8ys3iHFchnbYNU
         GIx/b5YlmBbY1g0nNFXmCcb2fGbxVlCSUqtzczdmsa/uRK9vmDXvva6Zt1CPMzkwej4N
         L/2SewJLOVmYkHZhgNQqHpoO4UfHV9cInBHEbSvL79NF28MFOHYJPyxuM2jAn8yd2Sue
         YgCfBCgUUR6ojWdU7i/rIrnxPtJGHM5uXna8Xxk9YgEG4LCKeOT+Vhu290OqD9QJ4KD5
         bx1FUjPsD9ZywEFI+EO2HKBCkEghCU+ads28sxJpjHK3EvjxbNYyKjH+nsDUfjyK07yP
         HEzg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oGjvyQMl;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id k15-20020a62840f000000b006e71eec45d8si562025pfd.0.2024.03.25.00.43.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 94BB960C67;
	Mon, 25 Mar 2024 07:43:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DB7DC433F1;
	Mon, 25 Mar 2024 07:43:38 +0000 (UTC)
Message-ID: <2f66396e-fe27-4a0b-a3fc-872bb6f07eee@kernel.org>
Date: Mon, 25 Mar 2024 16:43:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/23] pmcraid: switch to using ->device_configure
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
 <20240324235448.2039074-17-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-17-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oGjvyQMl;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2f66396e-fe27-4a0b-a3fc-872bb6f07eee%40kernel.org.
