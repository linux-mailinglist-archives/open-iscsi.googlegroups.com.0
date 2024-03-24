Return-Path: <open-iscsi+bncBDUNBGN3R4KRB3X2QKYAMGQEQ4APYGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id B07C18882B4
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:28 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id d75a77b69052e-43114d0421fsf43739031cf.3
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324527; cv=pass;
        d=google.com; s=arc-20160816;
        b=CzsexE2F+enTOJVO0fmMU0VOrpvS/D2w79PmzRyUg6OHan+TrPDaO7zICbvvGQf6Hh
         vlvqo88owPtFmHEI1Esxy29IxS099pIMKSfjJJccuojjgdjzqR6sbDxHHhb8ly5ES6k1
         th53vUGdQLKjCTWZyhrG7KEFeF7b/9CEkAout4crqSP5nrtPGxmyqWFfqag2QmEsdtiL
         doVSYZiLdT2lnape/T1aoAFhPqnqpa/JQX0EzypA6siOHBaEEWMyapV1yF0je1skdD+Q
         mQUkOYTVO+1ivyuSN/RZFlmeERwx5zQ2lgkUE/tKyZYqMpE/QEcEfRuaN68i5ZqtBr+O
         IkgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=W1PBw4O1DBf3c2zPbtdbfJg2Yr8T8YIoI6jZwah6TkM=;
        fh=tQng5xuTSHo1mXRepklOAi/Z9cgE+Ey/KGayHNsmUaI=;
        b=Hky4VV9qm1CVhOb0sNqbpFOXSyZpMqWyGOgyyhYMjCR5rZoJ+sCEfIlCCuaMW28BFF
         NLPRkJdCmx4oRuAMCxTvI0KLp1UBkFx7HDjXh6mjt2v+gCVUhd+hI0a0FH4zgd2MpdMK
         EDPMtQyZhBGVLUWyfCt0mceMbwxKm9+4AR/o3bCFnp/C68SuB9HkhN9Oh4vlReY9Dci9
         f65gYlvCcFgqVpeiqCiFo0vvHq/NQ+jbhErQq32MQDfc9/ZmJTwqvm1eAr5AwqPdKwDG
         A3F75Bwmp7xSEBabLPN1fMxXZbrGVHtRNv4bEQPBlKbwYQWa44Vu5pffzOHzhpUKAONn
         9r2Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=NYsH+jPH;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324527; x=1711929327; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W1PBw4O1DBf3c2zPbtdbfJg2Yr8T8YIoI6jZwah6TkM=;
        b=QUiNMgBZ1Q/rnpT+sQXxOzWuLzwmyGa7tebd3b7En3dan6mul0GyJWkFL/ZQjkwIch
         FrUvFFNagdMWalo5WiN46bthKDOkH8YYAyYLtKtynKrbazG9N7jDuajHQk5ZZyC5AzA4
         rPcnLgL8ryC74PUQrGlkeyMG+KP+Br1V4FzYS2F7e6joqyMH3/lzyKSMbLvX3tQniqBx
         AmpnxkH9ChRR3A/bGVyR60OyWCo2KEHxUu3bofygGPJfusBQjLjrX0hcLrNVsll8xX7p
         5fdPEjbne8rRJLEsDVfazvLsAFC4z0qKei/GcgK7B0A+U+8OuC0WS5DjY1pMUnhqjQkT
         d9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324527; x=1711929327;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1PBw4O1DBf3c2zPbtdbfJg2Yr8T8YIoI6jZwah6TkM=;
        b=M3v6UbA10ViHNoFMqOFGHxYH8uHtEZ8u/TJE+Ucg3ndaG7HSEUEl5x/IdUoDKtl1J4
         uzQnLgWHibLtoPrKWbb2K79ipmM8TCXSB8CapQlFOO3LZIk6rt1Yb/QsvE1Sz0A9vqia
         ruAsoJwdnYLjlQhbxN/Cp672A7h5mKVG2ZcQqNWHy5UghLAyZtdRMDvlULiOnJ/i4n1y
         1zgfOMii3S3M/rntlKBmOJdCGo7TY6nqxJFCZU2PaiprjXDN4xxVVueuQslOF2BAaqaU
         Vv7U1+Rd1wPqYWQmCk2V/aBgI0ntYgVdBk17Qq7uTuLCgh3xGVDWxuZ8g2Xk8Y+O8dPl
         0r1g==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUzDJhlZ/iRyisZxWS3em8038dfI84YyW2+oFJrvDO0C7dOmeclbkmcpkWsNZnA0w0PY0VT8pIKWPymFPem31YO5j716PNefZY=
X-Gm-Message-State: AOJu0YxBeMnT8ZXxN8p02Jjvx255KyEe99nPZ7Cz9NopJRz7UoLS5cPU
	M7/TeYU8LSoVz01NnNLTLuSpIKC9RO8SpUry3yQlVqs8UfLMFkRb
X-Google-Smtp-Source: AGHT+IFW90lOMLQ3N/Qt3+p2+nnnuEXmrTtJ1AV2WF6EuASt65TMqVoRDEsHcp6QxJ3o/AiWbXZKHg==
X-Received: by 2002:a05:622a:14d1:b0:430:a087:7a53 with SMTP id u17-20020a05622a14d100b00430a0877a53mr7656370qtx.68.1711324527555;
        Sun, 24 Mar 2024 16:55:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:180a:b0:431:488f:e14b with SMTP id
 t10-20020a05622a180a00b00431488fe14bls2085695qtc.2.-pod-prod-01-us; Sun, 24
 Mar 2024 16:55:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUveBeOyxvF8Q12pf2hhYMznkcXzX1f6EBZ345+wAMhe6GO3+yOqdnf2S8NRR4F0AMwChhb53JWBPXFyqvdQ5yJ3/cy0Z2vG5cdeVs=
X-Received: by 2002:a05:620a:468d:b0:78a:4ec1:3f31 with SMTP id bq13-20020a05620a468d00b0078a4ec13f31mr4955011qkb.61.1711324525631;
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324525; cv=none;
        d=google.com; s=arc-20160816;
        b=LvCm6lV/hIiaDc3Qzq/sc8LECrivAT2mbMG+F66v1mnH+L/laFZD0Um5ghgktLm8HY
         BOXbzWIwijSREcKVUQLL2f1o3oQ7avJt0jM7RSP1xl56TzqgEQodpd4z2jnN8WQeD9gI
         py0G9lMPG0WbyGlfbYo6pA7oYskF64KZudYKDs1skN0aEgpR+I2+tktSFf72/oQDaygx
         yd9145uGOd14W9seeVvwVZOHM7oLgTMT1chprlx/L0/8mr+3pH5rS3EtJqMkIu6sfnzc
         ba/UFAsQ0VbQk+hdpS1I4osfi05uEb10D6a6a7hj92VbankqL+XZe0zDjHhMGqJqVdyx
         Jivg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oi3gXJaYMU3a5CWeWFZBGsi5hiMd7VrWMH8aWRvFEBc=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=bcfkQEaCOmAFRweh770aR6uTPtun3DMnNddrMIY/kXkub3N3pQDq8R0D1GjNMEhfud
         h/bx7qpZL9JtlhbXbJ/7DTv1UeYq8+HfE8CRPV+KDQI8lK74kVKShMeisaI5gIBW60be
         rris2D/T6TYHNDfSt7nssuBp8VRD6P/7DB18vGd+w8GYonS+e1LDHbWCZkzvT6IR/dvg
         2uVCszgNSqyNnrfUbYzrsFiOeLw/MjP9CcpwxZKzsDHTnTxk9C5Guvr4keIJXgisjPuu
         AYQhD7frM4ANaMQEeSa07+q9PyGgBkbaKi/ipv3lICUIRO9WPVsuUmtbpjOVqXH2HKS0
         oYlg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=NYsH+jPH;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id h3-20020a37c443000000b0078a45a5c896si277064qkm.3.2024.03.24.16.55.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXfy-0000000DzKg-2IVj;
	Sun, 24 Mar 2024 23:54:55 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
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
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [PATCH 01/23] block: don't reject too large max_user_setors in blk_validate_limits
Date: Mon, 25 Mar 2024 07:54:26 +0800
Message-Id: <20240324235448.2039074-2-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=NYsH+jPH;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

We already cap down the actual max_sectors to the max of the hardware
and user limit, so don't reject the configuration.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk-settings.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index 3c7d8d638ab59d..cdbaef159c4bc3 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -146,8 +146,7 @@ static int blk_validate_limits(struct queue_limits *lim)
 	max_hw_sectors = min_not_zero(lim->max_hw_sectors,
 				lim->max_dev_sectors);
 	if (lim->max_user_sectors) {
-		if (lim->max_user_sectors > max_hw_sectors ||
-		    lim->max_user_sectors < PAGE_SIZE / SECTOR_SIZE)
+		if (lim->max_user_sectors < PAGE_SIZE / SECTOR_SIZE)
 			return -EINVAL;
 		lim->max_sectors = min(max_hw_sectors, lim->max_user_sectors);
 	} else {
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-2-hch%40lst.de.
