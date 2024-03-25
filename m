Return-Path: <open-iscsi+bncBD3JNNMDTMEBB3ODQ6YAMGQEPQVBOPA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FCC88B1CD
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 21:43:28 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id d9443c01a7336-1e0af9cc176sf9011395ad.3
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 13:43:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711399406; cv=pass;
        d=google.com; s=arc-20160816;
        b=HaGDDzgcnpivTk8U1uMF6BuN0cix9Z+Takw1TWk5Tvkp03g63+4F+zA1+B19fKF3EJ
         Kes/GR8b4c043rPS7YlZBE4+h6p/tt4e/CVg67cF6GzwfjbfVrGLRc8qZo/P6jPN7zMv
         LpMMsVS7C7QPgnmKfe4QCakYwsAoSQmoXrMgyL6PYaq9MvY9FmTuoX57sae50uBS3u2W
         oZvQfy8Uy2c0m5rBE5j9aytuoILdiL7jwlMl9x1G1vIOacpPQzfoXCwVilI6SjdiVrsV
         0X7VQOJtByfYP/m/ynyNyB4SmW2sRtK/TessTwr3tHreLUHU4rfeSBwFomxBecDyyXo3
         uIGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=jv14HKc6dTp6HveUHt0oOhOtaUf4+obfPApM6p4nLGw=;
        fh=cqs5vQnCRtzvrY1UcxwC4Cz5WTxInHHpuHkeloaIOx8=;
        b=WBweLMK+7PnywXtmAyyI59IyJuWcrz72X7ItV6+ZSl25/Zsf0B9GaezVDxy3Pl1Mkr
         Hons7V7qYHGlIIPCmgDy5IMDj0cpzzjrmxE3hXVP1l64AHY1NCASSr1Fwa7ioUnPTCnz
         3vkQmMAjC7z24RhnS0CZEcDKawtuiQOUGKlDIRuM8kjYnhMc7nWXJ2j7MoMPFsMyuhwW
         ecWL5WQ3AK4AFkqhk8yTo6+ukQ6BXbW3MJE4snIWIOnQFFJEDVUfsB1eRfYxtIjSBtzv
         uwqoHo1BgttLBZ3nRVE9XCr3twwJtSGUO7mlAv9a8upcEUR4QojLJBitSMG7QbW5wo3s
         uLUw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=o60GYQbr;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711399406; x=1712004206; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jv14HKc6dTp6HveUHt0oOhOtaUf4+obfPApM6p4nLGw=;
        b=eft3ihFKBCK4i461RJgrIBXNpyo5jltBitMzw3ZD8mFKO1qUJMZ2sUZkzKlGBNXAT0
         5sM9E7o2C0cl1rIYdVWXL68w9opyt8QqD8HsFVBLK55+aFLLglBvZCMn5lYFLboVRiO3
         zgjLp1n0dfYiQUxggNDRKGYog4rUykV5zjPT6OFEfWl+rD5bMF9ytYZLggw95FKcxfkK
         woDRh9R6g9zqO8MxfVqLtjhN0erWFehq6F7P8AoQvc1Pt00r+hVHrYK5Y4RLwggl3/Fr
         pG8hMF2uiSVVlxSq/irch3T5eNXUfzPeKCAXHulURb1Zt+ikhsVzU6OUu5udGubNznkX
         1Nvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711399406; x=1712004206;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jv14HKc6dTp6HveUHt0oOhOtaUf4+obfPApM6p4nLGw=;
        b=UY65iyWcZWhWaPAkA5GvCbdfQAjxaf5VP1q9WDdg20NGu0stVoP+7MSSiQR6lqcPmz
         j3K3ea9tF1bm3wkUdIzP+K9h8g1/HAUU6bDwCci8VCMFVnAdLO7P+csrFiONJunrUvgM
         bY1mln9IF0RsIYPT2SRRpa7wrdplfNxkEPYThjSCLTZjA7PR/cPI8lYZXBQW93QIV0Zk
         rkuJvNBCeMlAYqtUtOWbqhC7zVLrEdnOqA0ImZDnBZZkdKc5K2sW5j+t+/gljbYBKlpi
         O5ciho27okrmaQvCi5VFjUStyVdpmjiqJRb8YrWOd5Zuak8g+hAiP3xxK1IElzsaQktl
         yzdA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUXMO78oEuwfbBav/W49/snJIJdCKxCGWraeuVEO2iM3sqQ5Gvh7XJpjuIWOFbtmZNXnTf97/Qj9RHriocBgV7AAcNMJpuV4Jk=
X-Gm-Message-State: AOJu0YzRC1KKLWI2BgL/yL41ARWuGbwLVC2/PHSnypzwyGVsfn3boWEp
	1T8lUUrnm/O4krjOpOQufrUGyem2yjx3eGrKxM6essDw3Rsrx4BF
X-Google-Smtp-Source: AGHT+IGIfeaC7n6qs0HSlxAiaLZ6dvmN+v86qap9fJK19tfh6ISNg4kXdCt3X+MwXtrwRogxcTLfRg==
X-Received: by 2002:a17:902:db04:b0:1e0:cd01:9fd with SMTP id m4-20020a170902db0400b001e0cd0109fdmr2834297plx.26.1711399406635;
        Mon, 25 Mar 2024 13:43:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:f641:b0:1e0:d4b4:a45d with SMTP id
 m1-20020a170902f64100b001e0d4b4a45dls586134plg.1.-pod-prod-07-us; Mon, 25 Mar
 2024 13:43:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVZEYJxqQMTWtycudu6kZU5dsYiJc2K5ZT2oajHavUdiNmCY1rrPG/v65ZXHdjVFGqGEIRX3H7qQoLCb4g9Dwim+WwU7ue/eoVHIJc=
X-Received: by 2002:a17:902:d551:b0:1e0:2ef7:f9d9 with SMTP id z17-20020a170902d55100b001e02ef7f9d9mr10150381plf.48.1711399403797;
        Mon, 25 Mar 2024 13:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711399403; cv=none;
        d=google.com; s=arc-20160816;
        b=eneF+C5Jeqe1pIOw/m77wLPFOfzY7P7cxp8REqf95RXHlAzY5+FmsTxe6MvjvTvbsL
         VK2lKCcMFw/4GuROZ2zzYutzqbAu4Q9bkFQGo5MxhYFScx292FixeymjKxZHxcYVu6TY
         7yvDWU3iJgbaZp/Yos/VMmz0qCpg2NZkTPTuOri2WP8gksT8WUFxG1VyCEVsbSJbfvZC
         bUicFVgFwtAEWKAg4tqw8koV6dstjqwmrBkkBL5XaUKpPE6vmp/BDpcYNjgNu/FyIJ5h
         F5mBYkoJEDPEc0mkiMFVkZ0iSDrXOaHBV4L9Scau/EezcjPxbXAx8KEqV+rS29cbdL6F
         zzSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=xo7k7hDsTyfLL74N8EfEIPZVnqI9jotrbYjW/qdNPR0=;
        fh=ZF8T/hrxrX+7Ws2prm5mPVJd75XGm8RH7SBtPTVK71Q=;
        b=vrJuJclaaOb3Fe9fpCVAuO2mOOP28QQ5e//1CtFUzKGpueyvxzE6XjOtX/N2mR95ij
         vOEI2SbfWtIUYM2iY0+QNPxfF+SEetULdn/tIzKZm7351PXqliIWrfJsEHpoELqxU47K
         nIS6HK6gPL1SB1esSIhDqNrgloPofFf1eGkgpS010wwvcTvzzty9kmikraGyEnyTlkhD
         GO2HIvsjjupEZ9gnhdsG5DwUr7s8YJQUWxve57oFA1HvxMVF2I6aFXcEE742Fm4nkCQr
         9e3FwsKHjB0DD+j3jrJx/RZZtFstYOqLVavLDDUolsW1J5qZKDC8w8pC5HwLNE+a/cxI
         QysQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=o60GYQbr;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 008.lax.mailroute.net (008.lax.mailroute.net. [199.89.1.11])
        by gmr-mx.google.com with ESMTPS id ld12-20020a170902facc00b001dd527af9fcsi382606plb.3.2024.03.25.13.43.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 13:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted sender) client-ip=199.89.1.11;
Received: from localhost (localhost [127.0.0.1])
	by 008.lax.mailroute.net (Postfix) with ESMTP id 4V3Pyz27FSz6Cnk9M;
	Mon, 25 Mar 2024 20:43:23 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 008.lax.mailroute.net ([127.0.0.1])
 by localhost (008.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id RyVx3gHqWiUV; Mon, 25 Mar 2024 20:43:13 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 008.lax.mailroute.net (Postfix) with ESMTPSA id 4V3PyZ5tBkz6Cnk9J;
	Mon, 25 Mar 2024 20:43:02 +0000 (UTC)
Message-ID: <d64f697b-7349-4592-814a-00124afb6737@acm.org>
Date: Mon, 25 Mar 2024 13:43:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 23/23] block: remove now unused queue limits helpers
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
 <20240324235448.2039074-24-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-24-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=o60GYQbr;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.11 as permitted
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
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d64f697b-7349-4592-814a-00124afb6737%40acm.org.
