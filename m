Return-Path: <open-iscsi+bncBDUNBGN3R4KRBOOORGYAMGQEMTZ2XRA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7098E88BA3A
	for <lists+open-iscsi@lfdr.de>; Tue, 26 Mar 2024 07:12:12 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id 38308e7fff4ca-2d49ce3736asf50734161fa.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 23:12:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711433531; cv=pass;
        d=google.com; s=arc-20160816;
        b=OEZ6mqauH0plVY+t21fHP6hVi3h6fSNeiT4WqsyJd3HoIrszCn91pXQHnpltfINgJQ
         giq27T9HUOSLEvJGGsZgjj3Aov/5WhDHh+giDiDPUleu8TJx6nkNEHlXCpmxIoH/H84H
         HWTPhtEVHOrYTFOneHBH/VycTMddcxHrExE1Gh8urya6TqdhRQ5nAG6EZPQwT17xKH1/
         5mLr2Jl9ByeeTl0sp8rBc8qFxAqQk3GhTdtFo5H/dxlRVueHyMr9ZoZNOrlDsCPEqFHk
         1n2zljiWe3mlltu+u7IbbDnGpu5iboLlVY6MlIufVrUw4xP0fvPD1ZZ3TL7G9N/XXTqF
         hJmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Nfz4FcYUuo+WR6AB7RyuWjSD7/Nd5odci7MgrGtCikY=;
        fh=vGr6SyLff0JwxzVktRVAhXRvfc5lllsSG4RHLgJxAMU=;
        b=O8b/3xSRKswnM19ge3XSfN5qTScGQjHlUO3V3OSAVtCUVIc83+QM98b/Is0QGCIcU4
         AoAm2ljZZe8KhLqLHNJIc6eRtai3CYYQfFPn6kHapyoRztdNf1wyRZ/lADUACpwGuxL7
         pukak+hi6la/GTL/g9HQQLZ/Cv4/pvbeejHmLhqJs3L2rLAoTy8LuFu4oWzOV++ZoPcy
         RFq0i5xBAjz0pJIEEkKY5HdOnInGi7013rVkFj0/a03ljA8uIFlf5ByJjKm0kO5YSFiw
         1NULE21vebSf5wz3ncq63HV0x2sW4R12pjCA/wnZ3i5tCZirxsaP6/sErnke2Yh5zcAY
         oJGA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711433531; x=1712038331; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nfz4FcYUuo+WR6AB7RyuWjSD7/Nd5odci7MgrGtCikY=;
        b=uyA4H979f527A/wcASuVcsKEJ36THdmf3Zj/eTDcTYCMm0UtHfei1U49se53YwdkEs
         XMfnVl0K0kxtzpKXLcaPULJY66TMxLCOenHQxzOjbVzoKIJP7g4PLR4/If/LGW7rDBF5
         WKYlB4FyNyaCaC6SG6si427vtlAHChvSZnSDXZnhPI37nWUwyt2WJWTDeA791kEfbyYm
         7Sfn4dlazVGwT4wZO9dL8QKojYDT+D8UiqZRAdvAFF6Dg3lyDUiElCWeBK6njHoYVCzb
         PCR7wClxU7csqhkPKglqLxalp2Qm8Z+JVVdxKOu9CJyNuQV8TgoNT+N63tmhHzpuoGmP
         9hqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711433531; x=1712038331;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nfz4FcYUuo+WR6AB7RyuWjSD7/Nd5odci7MgrGtCikY=;
        b=mubEq4NA18II+oMRK013T1h/uOWg0Xn+ZvwmWgVYXjPYAXHFz+IrJKWAY2OMtPTnJl
         bwgv+4G1omBxoTfEjqP4eFz5u3owsySoOvprkPt1U63edwFFXenCY8wkuZLUObR4nSzU
         xOdBNEToG+QDXkCTtGsX936I34c7TqRXpSItiA2y4iwQI57BTxMhQXfrrsSAefvAjfKI
         IyQpC686tTqLUzpSHBcYFv7hz/bErxinuAjB4tCg03Syd98UHWL0yDmWdOgOAgZnTxjB
         OQ2BNQJolNxI2WLqX+hynIgNmka7jFSosChykTg/EFAX63vjwDGykb7hbGgFhFD9bjaM
         vNyg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXv+0k2yCNJZAWk9IzYp1XEsiAKZNaf1s/kfnXtbrCI+UvSUEn9N8hA+YcNTzEAqzslWT+UDjunxyo6thEFccTn0C41je5I2ko=
X-Gm-Message-State: AOJu0Yx7SV41BBeGqPjmvFC68ZHL0INlVZMAqP74r+lan6LcYjjTPbst
	2tmY9JaIb0kyOynW92Rwr/VsA7fOeuVMH4aUNtasx2jJNn/ThR7M
X-Google-Smtp-Source: AGHT+IGaQT6bof8iJ8gdhZsVBuFxMmDmD35i4cghMPwgYYTu/upxE7HcjiEKG+HOL+w/dOladhcuWQ==
X-Received: by 2002:a2e:9891:0:b0:2d4:22b6:eee6 with SMTP id b17-20020a2e9891000000b002d422b6eee6mr7693232ljj.8.1711433531466;
        Mon, 25 Mar 2024 23:12:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:81d0:0:b0:2d6:a8d9:a8b7 with SMTP id s16-20020a2e81d0000000b002d6a8d9a8b7ls3022094ljg.1.-pod-prod-05-eu;
 Mon, 25 Mar 2024 23:12:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXh5U90TJSMjLa15HZ0xu/wjrVQbSPoYptcYgB7fmIdI1zUZOO3rQgChWu6BpHk6mh9tfNCK+HOhwwAB+NSyGKXp10X2jMzHF0Hspo=
X-Received: by 2002:a2e:8806:0:b0:2d3:a7da:b17b with SMTP id x6-20020a2e8806000000b002d3a7dab17bmr7388642ljh.4.1711433527185;
        Mon, 25 Mar 2024 23:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711433527; cv=none;
        d=google.com; s=arc-20160816;
        b=cCqZctm70faxkLFWOCykOGiXaD+q94SmbrqWzsy8zUwJnKe3r8z0rdNt+3UwEHp4xz
         bGV7MUst7oTN5nLkKpNKLTJNUU8s4pnGW9g3Pa+wgvNeL6ZrXIpclgCd+FJukJpGW3gQ
         BSMUYz4M0swL+P0NcwwvH3FVU02WVj/XUDo0ONd+Bb02HvHx2CImKi764jIzmlimst01
         6wqDYJzwYiIxuo2rF3m8Yhw/MNqh/8/rzpY9p0wLLZRuvV4uF4e3Ao6wE4RaCz1Ics4J
         OROg9n5e0jVtik4To9YcfGxLRZENdb/EHQ92cKKfAYuPklwfAz5M5fExweCMOYVh7oDg
         1jwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=DLOvoDpFweoFui+c9660re0k33VwORLN/UF4pYQ5XnE=;
        fh=7SMFdBk7lsQwIHL76JTnMo2kdVMyIFhMwXDGqn9MLsE=;
        b=AAGWfRPo6sDBFAcKoKLj4/+186xKD5PlsFh4z7OH8CM10oic4x28iDf5wSECK21W2n
         0CFqrg4jQFf8j1/OCFhvQO8hCeNEuod0kCKYdccBnNRTSa4RPf9dqMyQWb8rlE+rw36Y
         mlG6XyLdkO9SemQxFAk8W/SxiaFepewN2WaRCd63HSWQw6xXYXQSC2ExYq9WNpcJlfIa
         kDXcCE2cecmIxjgLutpVJJlFQX7SkMkGaVpkfirAfdL116d2E+4Qjc2iYCnvoKnOnKJD
         BQ+R0yUDi3z8OgkQVyv3NPqPbLNVIJ2jRzx2cUXz2mbDjO2C6zskKvmR0exSbDNykFCy
         rXaA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id e25-20020a2e9859000000b002d46764b564si279885ljj.6.2024.03.25.23.12.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 23:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 572EF68D47; Tue, 26 Mar 2024 07:12:03 +0100 (CET)
Date: Tue, 26 Mar 2024 07:12:02 +0100
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: Re: [PATCH 10/23] scsi: add a device_configure method to the host
 template
Message-ID: <20240326061202.GD7108@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-11-hch@lst.de> <b3ee2dec-3258-4c9f-81d8-0a266128b9ef@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b3ee2dec-3258-4c9f-81d8-0a266128b9ef@acm.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted
 sender) smtp.mailfrom=hch@lst.de
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

On Mon, Mar 25, 2024 at 01:35:08PM -0700, Bart Van Assche wrote:
> There are two methods with names that are politically charged:
> slave_configure() and slave_alloc(). Shouldn't both be renamed?

Probably.  This series howerver doesn't actually renames anything,
it just adds a new method that takes the queue_limits and avoids the
name while we're at it.

> The name "device_configure" may make people wonder whether that method
> perhaps configures a struct device instance. How about using the name
> "sdev_configure" instead of "device_configure" to make it more clear
> that this method is used to configure a SCSI device?

I think device_ is probably better as it matches the target_ naming.
I could live with sdev_ if everyone else would prefer it.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240326061202.GD7108%40lst.de.
