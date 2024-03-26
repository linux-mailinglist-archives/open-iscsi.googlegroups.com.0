Return-Path: <open-iscsi+bncBDUNBGN3R4KRBE6PRGYAMGQETLSHQHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C46A488BA48
	for <lists+open-iscsi@lfdr.de>; Tue, 26 Mar 2024 07:13:42 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id 2adb3069b0e04-515ab42c302sf1357666e87.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 23:13:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711433622; cv=pass;
        d=google.com; s=arc-20160816;
        b=rR81D+DIAfpGrMdD8R1/PyY3jtgiZPykRGZmkcPYqfvXTnRdRrW7jdh50CTkLDvcHR
         7idEWZJWgIWaVYU6ToceRCdzGbI3hSZ1NAlV/y+mFo212GedcZ/wn1tUAS/yd/emiHT+
         lxNtPfT3mJvV7PcPkNirIKJC4z7V1X2UpasJ/1EBr19UMu8mFRAS+GqWAbCq8y6X9RwQ
         jmzkexOx8szNlPNGM2zqNmU7T6rui6Aq3vP9tttCXh2cYM/bHEiFbB6r4AA2hNvPaOW6
         TRJamPobJtkl3cPPnFcN0PAprHJkJzaWOrB0vfTZ0YSmXMzyHUiE5nbZLlIar0QcqGgR
         oSxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gvsA1x0Lz0c5pT01hvHyK/KOuh3B7dd8HHb0qf6wBYI=;
        fh=cf77LY/To1t+em92lJEZKCBAhNfAmfJFcS7qjhadIXc=;
        b=YdIyKu9QMtm641dRbqEmqLi6NhrUSP4qmAEzA9ftWaLThB17luI1lgTdKyFRXG4KKf
         l0viCg3wMChn/DZAKeZUy6uXKLeseAYNGsZNHeJWCU0KM4wSHEQi9QHo93CEMqlW3IZO
         u/St64DJb2MJuiybveISkSKzlYq2HMGc1JSmKfZhuhZ2zjsfUxCYulPMsnkbpSUXBlIq
         Jl4WxUleB3EelEq1d59e7IBABsGZbHbSK9WijsKn8k1+bXmLQD04dgnC1irXSIVoQjlw
         eWE1WDNczzhC49A6iSPNIBWV+dN7nN9i90BombXCctaLrDt2jdHkMUvJ5d+vylHFPzSS
         qzxw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711433622; x=1712038422; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gvsA1x0Lz0c5pT01hvHyK/KOuh3B7dd8HHb0qf6wBYI=;
        b=BjGPY5WGX3Z5/ECj9TEoO1NtC7O6q1oSdtiBs4k6aleKm9lTpcZxjqjt0jlnuuO5Xs
         XCIB7dRSW0/Gw5BEbpdtG+1OKLNJMeCcGBMUSBpdr40Hz/NfEjUTOhB3wr8ubfb1jcPi
         Bj2tLmKu3kW0wxDMBa9X+4ENgcUlp9/s2ZaiTBIkva4pkGxQZS3yDAWxrh/tz0nCDhnH
         PLjtleRDZZYNCT4RApXNeTrpQfJyjXywvm6hc9WyFfliM/d0N/D7Opr+twDk76bffo+h
         D24540AP5bupNRZv5JiiYeAjjmFKBNooSNZBUuUAKmcwrsQbj/EQxKzVH19Hf8nb1pSk
         RCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711433622; x=1712038422;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gvsA1x0Lz0c5pT01hvHyK/KOuh3B7dd8HHb0qf6wBYI=;
        b=w90YSfUrjTm4p7ncX2JzuYeS6Mtp1gai6P0ybMdFs3UcwqRDvAL589bEeCdVSazuoe
         JU8R0IPCRLIXydT64wmCRklTbJxbqfCqV64y0oaVoEZtY16IbxJSAlxDiKSLX+G3ERWq
         tKRvY0VhfY1yIpTzHiNxmS21fNIc+mw8wuxyp7P4p0l+375UicjkMH43hzwnuD3DP+ni
         D2nt9JKIdvrC/WqvAgOHeqkvTwVMliT1vcbIwntZVh4a0Psvi9QUzObwmkK/RjsFq7Ie
         otKnL6VtTQNNPw3UYv1d+ejJqgGmnDR8RtvQMYMHkmUvg2bz8uogRvOd9ybLueqkxrad
         STGQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXiN0cg5yBzE101sEX4H1/4rWuEJx/dcIWKXyvoyEeaFq2IqJCbw/NQWkHtX5vUbbPbevStcDoy3sY0cs3f2SX41oCKQKxE6xc=
X-Gm-Message-State: AOJu0YxSsy2PdDB3AOmVaVCLrEvjMG6VxKoyPEG7WvMgIG2RE4k7Qpa7
	7aB9ZTovwjhHcoiPF4fL7Vjo/GbM5So1dyXWm9uJjS5DOegCnuMV
X-Google-Smtp-Source: AGHT+IFrYFdC6EOgPKHrfaFLCJp60pSkGsZ8Z1y2oPzptgkMAr8pABwYmX7B/M9RWdUCCoFgmB+qrg==
X-Received: by 2002:a05:6512:220d:b0:513:d1cd:b902 with SMTP id h13-20020a056512220d00b00513d1cdb902mr7539638lfu.32.1711433621817;
        Mon, 25 Mar 2024 23:13:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:d68d:0:b0:56b:e650:489d with SMTP id d13-20020aa7d68d000000b0056be650489dls1738956edr.2.-pod-prod-08-eu;
 Mon, 25 Mar 2024 23:13:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNBdDApC55SAtOSgL7Nd6VBLtTF56fjNnVyqRyLI4KEjj8ZaQ0ZKSLqrC7+m8EnFM81joJIWKeooig4YQfBvbplqf7o1fAczdbZNc=
X-Received: by 2002:a17:907:7289:b0:a47:4951:7415 with SMTP id dt9-20020a170907728900b00a4749517415mr6569629ejc.0.1711433617654;
        Mon, 25 Mar 2024 23:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711433617; cv=none;
        d=google.com; s=arc-20160816;
        b=TL4GNcp7X+wDR46cVnRkPCIcumfHF3ZcTqc81UhqBlY5kPqBVSN9w476XVYBkjnzMh
         Pov4w9aLPLqEkF506fZoRyLsciT5JANFPrtwHmPc9frg2YEdGHNf8qfy5jlF2XAdW89e
         SoShnOvpLrbFbXRJZ3BRLzubEi41m+YQ3gMXOx7kvmPJZR/csi//7OkcVgdliFD5WDS/
         3eFOSkspkqK7xu3K1LQsa2aTJabxrV1gfgOQoqfsA4c4sRyJSyG8grsE4Q85/GS1wY7p
         nke2qH5bZQUAUateMzrhsh/AsA2X4r/9Fo8IVQMnyf+jujnTfPOeeAQ/5vrfGTbLnrpc
         yGrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TaqrKAickkEpZy4N5dpDLmCjJXiM5JfW2BBVBU6k0xY=;
        fh=rGclfsX6IVvLNBcVa+osytPbgqjudZGOzaQywEyEf3Y=;
        b=vfw2J6LuxxAH9sxPEa39exvN7sextgYOoi4YnFZKJlC32+LtP4I6tkbNMjBDlQD4+6
         DCT4eJ4ScKc9U0g+4x/+NWHhGqk7hv9ocmIXAy/h91pJ9q2Oy7buuBawNBzQxPIUWMa4
         qCAlz5IMULUKHgzRj+YUx6ivjWzWN1o/tIjN7QLnLRPwJEBG549u1+wBV4qkP1ppIMCh
         QOixXMtrmDKrwz/pvHw/Q5VjDFBlb27GkycbitEu2cbUp03GPlpjSFPohhK1qyCjMU8T
         blbEfyAoet2/0DAD9YmMlWHzWXD4f+WTihhLTysavo/EscCZNVm4kbOdZaqip+3QKaWA
         xiww==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id v14-20020a170906380e00b00a46acd22106si278042ejc.0.2024.03.25.23.13.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 23:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id AEBC068D45; Tue, 26 Mar 2024 07:13:35 +0100 (CET)
Date: Tue, 26 Mar 2024 07:13:35 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
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
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: Re: [PATCH 10/23] scsi: add a device_configure method to the host
 template
Message-ID: <20240326061335.GE7108@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-11-hch@lst.de> <6199c70e-f0a9-4756-b3fb-106985c41ebf@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6199c70e-f0a9-4756-b3fb-106985c41ebf@kernel.org>
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

On Mon, Mar 25, 2024 at 04:38:43PM +0900, Damien Le Moal wrote:
> > +	if (hostt->device_configure)
> > +		ret = hostt->device_configure(sdev, &lim);
> > +	else if (hostt->slave_configure)
> > +		ret = hostt->slave_configure(sdev);
> > +
> > +	ret2 = queue_limits_commit_update(sdev->request_queue, &lim);
> 
> Why do this if ->device_configure() or ->slave_configure() failed ?
> Shouldn't the "if (ret) goto fail" hunk be moved above this call ?

queue_limits_commit_update unlocks the limits lock, which we'd
otherwise leak.  We could have a queue_limits_commit_abort, but
it seems a bit pointless.

> > +	 *
> > +	 * Note: slave_configure is the legacy version, use device_configure for
> > +	 * all new code.
> 
> Maybe explictly mention that both *cannot* be defined here ?

Will do.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240326061335.GE7108%40lst.de.
