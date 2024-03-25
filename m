Return-Path: <open-iscsi+bncBDJNPU5KREFBBCOQQSYAMGQEQAADSRI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E9988937E
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:30:19 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id e9e14a558f8ab-3685020a8edsf35893455ab.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:30:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711351818; cv=pass;
        d=google.com; s=arc-20160816;
        b=P6bZ1CBpkG+lQR3eM5o7xnkGxicbwmo3E/wJOTNspFthq53hPz5C5DxrLXgZrtoJ91
         NovtR6CGF7jm0e9Vg5oKNprfTwWUtcBbmDQ5I/6tPC/BXleNInn5pMqyTJ/gib9bfaEk
         CBPqXb6wi2ASGt7iR3/v3zDaaANrxtnzJ8qr6QTFI+9ve/Y1c/lB+Is3TdyASRG1DjLx
         DHdFjiHdrtbdYzrSgojHwDrH0gTicuFpXGJgoUmETwNAtbZ3i3EGnwwxoAH2SA/pyt9d
         3kMl0rjPbZkNpZYibPrUPkYENc/ek9k+94S9b5cXYAm5wSqpxRlrFhU+kX3BuQ7jMUFZ
         Fz0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=p87putK5+xrM+BXu9oSGhYuLHFBFlgSw+/0FvH9PLHU=;
        fh=uMv2xuzxKXn5FzIJFema23q2FLsoLd9eKrTyR22UZdI=;
        b=lvgCWq/2vr2w5Q/tGzCpJZM6c7aESwDFD6zqroiw8fRoQDVNkX0oaT8Jro8IyImtOf
         oDhJ1LmMKBNTKBG5tcpXB/2L/baBMF+77VQUFGtyjtOfLbFrTHIZeXxgVw7LsR0kH+cv
         phKIqcq6YaObvYQzMOKkt3tw1gohCK4rnOYoQFaG0HHancr/3RiuU6YrUkO/rXDsc7/a
         4knUoPcqh5b9RhGjww+5e54zYeDRB/StaHx0tEH6yBR+8TLuMR5mZsFWdMgzRKhnIcpo
         PK8jFMuI5w3q9WmmJ0rCoiupvVElXcs2b/bN5RTtWjVxcp8FLkVwckw+ip0ADmzHboSB
         0VAQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=et16iQGk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711351818; x=1711956618; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=p87putK5+xrM+BXu9oSGhYuLHFBFlgSw+/0FvH9PLHU=;
        b=NOIHTwdE6fpLX5JVsrWnNwFQAin+hi3Nz6SOixQ99TKvfsQRNiM85rKQxss9Zt/OjU
         b7oVe8HwigagYKVRA7ZNHfGQMjLG/oR8IwW5/JfrZW8prMlLwWRYFWnm2//O+Lh18Tz8
         kdAGpO+S3xhx/Zez9D+Kjg/xCf8OAfcF4MBNGthSBgYoc3qrmoWj5+WsIJBORLhltAM9
         v4zXmVRIjw5eHwKdD85AbQLaY75YIjGfyAn7oo69WKnDZ21byDGQnKXhZNQnPDwG+faZ
         aVVz8yRL1AMMc6f8DFI7es8owUTX8YwyDWauN+9TCzpluW8ir1mm6eNYjzwCeRGJGvxj
         M4OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711351818; x=1711956618;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p87putK5+xrM+BXu9oSGhYuLHFBFlgSw+/0FvH9PLHU=;
        b=F/B613SAucFzeteiYtpxFsuchcmF4i6fo1PCuhHG7nOfUikuEeIF+gMXjZte+wKbKn
         63GHxUXvR51vKUpF1lG0MZZZVeVx1c7OlFgQXLWBBCwwqQLPZ9kF6l3Ng5PZ6LAYGOPf
         ZCZqsY4Zd5eY0G1ssNxQ6h311idi+zXLGjLi+XAoFAiiBNVFJ1IUJySFnr6uAu2oB0zc
         B04oq0BuCHSdwImTDt27+vkKFiG3uDkdmNnUVXTdLM5AnwpxB/xaVMGLvRBdZHxVP44I
         6m4GUAJ7pjhUozygzEmmGytNdkkyIPHdFyt0BOdgrY0QXWGlprgF1sh3RZjOQVKMgtEJ
         i6yA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXiGfIFot7VG2yh4c8f5OrI/3pjLoFMfxzk6hXOR1hHDIGRMrPKAhQGnWTPDZBetP6pLc5L6FhZayI1CreG99SCfMUUg+OANZ0=
X-Gm-Message-State: AOJu0YxUyWUrsnxf6TS9nb/wUV8Hufnuka6y0iD95HcWzX2vXXci2KmW
	mzcVHKSHSCEV7+r3DhlwE0GR2cZubEVS+/wTz/xV0pVtm7780aeG
X-Google-Smtp-Source: AGHT+IGETGlrPG/XxRQTgd//J//JILWKXsui0t/vbQkUOpXHzQdNBC94evMCk8Y7NKBIIVnKofLkcg==
X-Received: by 2002:a05:6e02:1090:b0:366:7b23:763f with SMTP id r16-20020a056e02109000b003667b23763fmr6022612ilj.9.1711351818544;
        Mon, 25 Mar 2024 00:30:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1e09:b0:366:c618:133 with SMTP id
 g9-20020a056e021e0900b00366c6180133ls2915918ila.2.-pod-prod-07-us; Mon, 25
 Mar 2024 00:30:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWP0l/c4b9vt0qZWU4BWouAcUbJBZTCufIlxVGuvGmb9qI36Nk3n/Z6wqG/wWRg6GCIrmD5EjeBSa6IvsCfzocRmh+L4fVozhYx0MQ=
X-Received: by 2002:a92:c84a:0:b0:366:6d31:2af8 with SMTP id b10-20020a92c84a000000b003666d312af8mr6767323ilq.18.1711351816788;
        Mon, 25 Mar 2024 00:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351816; cv=none;
        d=google.com; s=arc-20160816;
        b=oJ2tDfK/JhnQswddOIjOtiQRECb8ltjlQGWj9VI+ILmetapv6wLE8wxhGElZu4hDE5
         Vf8KRXQHBhWejV1NPKkaL/jYYXQn+L3uAtrDrrC3EaOalmqufT5J0V+bM1k7A16uHhrh
         csz658iMU0UcEw1AQhfGEhocPy/mz1JhL7la89yZqONEVb9nis6Lw+DlG8Wi9qdT8FG4
         39bzLNTHU83zsg2Q96JHPwQiTxZTpR/tjed4DO48L30ELyTTHRAIQNpbJSWNyP1LrV25
         0ZtG+Buxn/q30H2dQAMBIh6ir8gALL1mEtIZeAqNlQf4xJpzkqJXB5s7Ur/cVBh6iuhZ
         OBDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=Zs4B3fBM1oufB0+xA8cQ0gsMF1TsLR/ET97OkojpXFc=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=OE/Q80ol+mVTJt/+OV7YRVLjSNI+EC5puiJuoXMewuYW5s4D7K8PVFEoE7DgL5jNOo
         q1QUnxwcTTmwDJ0QuQU9HyMK494ebwZmd2c5z5IGiqtIKeWr2GvjN22IsHt1i5V+841I
         g8McMERZ1whxBFmkoT/xzEzaTO3u3QfW1YvljB0I5aGOi5CID+Li6MzxxQklekeevZBe
         XLMAKq+lJI58LHhrV5Ql7VGTuQawDlTfao9AW69IziTpGs+1yKDqmfPFDii4Vw3llJzP
         cwegx1pziGkzYYPPkzovh3Y5n2qBMAemZ5IJdbwe0r5UjkUtHjArMxYkBjAIHGUDT1Lx
         uSQQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=et16iQGk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id x6-20020a056e020f0600b00365e9e3139fsi498463ilj.2.2024.03.25.00.30.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EFCEBCE0B17;
	Mon, 25 Mar 2024 07:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EB3EC433F1;
	Mon, 25 Mar 2024 07:30:07 +0000 (UTC)
Message-ID: <3f140e6e-a73b-4c27-a14f-0add8c36dd26@kernel.org>
Date: Mon, 25 Mar 2024 16:30:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/23] scsi: add a dma_alignment field to the host and
 host template
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
 <20240324235448.2039074-8-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=et16iQGk;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
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
> Get drivers out of the business of having to call the block layer
> dma alignment limits helpers themselves.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3f140e6e-a73b-4c27-a14f-0add8c36dd26%40kernel.org.
