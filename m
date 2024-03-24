Return-Path: <open-iscsi+bncBDUNBGN3R4KRBGX3QKYAMGQEFREOGOA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B5B8882D6
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:13 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id 46e09a7af769-6e687248affsf3223069a34.3
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324572; cv=pass;
        d=google.com; s=arc-20160816;
        b=lfo8KVDx+OyzJuzNoHwWJwBIYr6zvMdV5UqcbXkQ2xoK0gD5zcXDyhkDxws/6QgX5q
         Md1kLCRvuyTFOwJxadPuo0GVkswojybVLS595Fz+BQu35d8qLQoXie/FJ+5+P0Syqzdc
         E/eEWvVOjAv5h0JKnmLbXlB2S/eKRSXhGHIe6tZUF0lIh75l2QqbYKBbv5d/9BS/mhst
         g6M4KLQjgXcugsqno5wE3FWz436iNGVsGMFrNRhzZqR/jPU/X1vXA8ua12bcZ0oy+q09
         rfZ35xjCzMjZoiQkKODPlILOC99jv2qSC15zTF4Fyh7WzdNwQ4kuJvsLrvA6D86WJnqm
         3zvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=PfhGgaMWfQPeYrbc8Ei0+F3TZTGQsQ+gGqziRNxB+aY=;
        fh=NXbtnq/XFp0uOIG/Eaqq+S5BFSwfn0Euu6U2QvvMgbo=;
        b=oPzF+tVxcOrFwc0BCKAs7l0vbbI/lJ0eWJudpQadJ3d4bKVUZ4hcqnsZ3cS9fxP08a
         qWhffukfJ5bpTDIKvZvxZwuuMX7uqVuB0MN90cPMX85PYoRuRTqUq/q4cEzSG35bCv3V
         C1nH5X80z/KMN1VTRMe1HpgEn7oo9L0vbf615GpVrqJnQqOkixruYh+PSBlrkG7pFve6
         GH5BwhYR2pE9jSj3VpYekivURYjKThaBOZsoLAo5RPBu9O/kVN+HLMZ+PkKzMs9bDLaO
         dzE+fGxH1ZSpEo+UlyavqFLbDPqDR8cdg4WwkQ2U8G8tOdXBaJ+1lm16D+KOMggqkaOf
         tgCA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yaNYGNDq;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324572; x=1711929372; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PfhGgaMWfQPeYrbc8Ei0+F3TZTGQsQ+gGqziRNxB+aY=;
        b=E3Dhz8t1MR8+exGeNAbjuRLpoD/U1CYKdDFEZSju8nkZax04FRR5QSFuUEeqCTbonZ
         L264SburIlxyFacpo5XKqnaAalX6eoie3zz8GKeIIX8YIczLKCE+MLHpybxLcRGmOncj
         D2UxMi3Cl4SDCgrXB4FGtBQwGTnldA5IaQYj2JeKdt7i7I7CXpXJ80Eua8HlBbnqVaPj
         3YIZHHdAqQ3nnMCJbluH4ps3UU2Dz+REzqn9IqkFTvi8oT8nqcfQtZE+cqXaiW1yVVPP
         tjzn5RjHnuHudtyDYJ+2oaa7YrNqwThGqraz4GGLIQZdeSqRYHTkYrlop/7JklpPkvLe
         R37w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324572; x=1711929372;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PfhGgaMWfQPeYrbc8Ei0+F3TZTGQsQ+gGqziRNxB+aY=;
        b=EQ1ilr70KqME6Xx/AeMJwj15R2giBhlmHcaAbnROVnq6+x+CAHB8p2wgav/ZtlAJH3
         yv0t5kUo49UVhj+0N/GCtuRUZJyMqyP4E9mmaSrSX1oFFuxv9d57vSFM4J9HyQWA9VD1
         xO+FmT6Il6x7waEYq7yX1oIIsUrJUtHXi4aDGZzWDsLH1+6K1DiUp9iDlAWqbdydGJHf
         3Kz6BwE9zrCecgaw0WxFDEnjtrzle4w7jozFSeqHQsEr5GPO5GatmdioghQVqkZXDl9y
         pu11lxJ5iAuK8z17pNveXw5k6EFhH5ClMfGxhPyNDxYrYD1oou9qMb5hiTyf1Q1TrqCN
         rUVA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUMHvxbKWFk+gL1I4ggecl4nQZg6dv+I7Bl6eK1S34Sai5Mwg0HMw7Pt1jUdO1tnwTafAE3qHURWSQQMDqgoQuN/KWYGbWVXS4=
X-Gm-Message-State: AOJu0YzgzViZQPVorGjA170jxnxt+lwrXjdSqv7PoGA4A3cYbkYweYXD
	IaXZAv5CEFnIbV6raCxyN40NR2hs0MnaaeMC8w3ApvvDljL4V7Kv
X-Google-Smtp-Source: AGHT+IEJytVrVP7O8CrF/J9xBvuz78D8tUvZOEB/61fCjUGT1gIe0RXgYMVSufGz8lySSdOMgOox3w==
X-Received: by 2002:a05:6870:e312:b0:221:d6cc:b551 with SMTP id z18-20020a056870e31200b00221d6ccb551mr5587133oad.2.1711324571997;
        Sun, 24 Mar 2024 16:56:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:b91:b0:229:c767:cac7 with SMTP id
 lg17-20020a0568700b9100b00229c767cac7ls4117808oab.1.-pod-prod-06-us; Sun, 24
 Mar 2024 16:56:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUYXroC/TMK7e4w4xSsOEC1snO33t8d24p8sGWAFHrI7d03Sk6iN5G42z2JzYtj9xL4Fzv40/KM2Wlt0vNmYinJo1Z/l2olskfEom0=
X-Received: by 2002:a05:6870:4190:b0:22a:107c:4ddf with SMTP id y16-20020a056870419000b0022a107c4ddfmr3772522oac.23.1711324569999;
        Sun, 24 Mar 2024 16:56:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324569; cv=none;
        d=google.com; s=arc-20160816;
        b=IgheEkM5Vx4kFC7CFlq67T9tRIlPh3XO86Sfx+39LeUv2oVwjwv2t9FqDb4xch8fSK
         SLZmGk42fq4uuWd8bg9cyEticKMzkT1FBSQwYb9UGyxIuKzHAifrV2IP2VHzOGx6BIIx
         ps9etn9FpSCJl9l7yjUqQcq417jX604F4vS9RQTCTrO4cjM3nLTSwYTPTNkMwJMZQnuh
         Ou5tvXQSO/J/ip9LatWwSsit1VdR0P5Sir4b6k3IgpDmiQqkSXd8zIdeqfUay12TZlEt
         j+xHl3NPPNl5PYBrWywqlA95C5asfBF1xLvJxTpCAPqCrFH7186VGCVBz62L16pTi9As
         WuFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ouyfZJOprAivUD3pQoGhzFC7pBq223cKtZHCDHGO3TU=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=IvIEGl5hrgOQRPJwoPN5O+eKuC9QPsTP3C0VEfAYoEwD+VFyRi6b932gvO2GdCVpJD
         wXHKgir42DKua917Te87T/ppR3bkxW1j3jXzsmwP3qIGeNb6KrU8x3g2N6CXu8mhbDYP
         bw9LmiM7VG/iavVqui4CRBwBjALYHwF85Qcd66rNmn/MguoTYHeKd34doN5N93e8hBhw
         8mSekJAF33CF11Ng9ur01jZJouE4qtT67KN4dvjn2M2ALDOLW4XkWWRQSpbmcp38zbsb
         wo/4DLFnhHJSEs0uV+cCyjRVW1JaqUbrtTzu2lfeI9PT+deMZwauJQ10urM1ep8SuJnn
         SRnw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=yaNYGNDq;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id b18-20020a056830105200b006e6839fcce8si298163otp.0.2024.03.24.16.56.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:08 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgy-0000000Dzft-48tF;
	Sun, 24 Mar 2024 23:55:57 +0000
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
Subject: [PATCH 14/23] hptiop: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:39 +0800
Message-Id: <20240324235448.2039074-15-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=yaNYGNDq;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/hptiop.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/hptiop.c b/drivers/scsi/hptiop.c
index f5334ccbf2cac3..e889f268601b4f 100644
--- a/drivers/scsi/hptiop.c
+++ b/drivers/scsi/hptiop.c
@@ -1151,11 +1151,11 @@ static struct attribute *hptiop_host_attrs[] = {
 
 ATTRIBUTE_GROUPS(hptiop_host);
 
-static int hptiop_slave_config(struct scsi_device *sdev)
+static int hptiop_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	if (sdev->type == TYPE_TAPE)
-		blk_queue_max_hw_sectors(sdev->request_queue, 8192);
-
+		lim->max_hw_sectors = 8192;
 	return 0;
 }
 
@@ -1168,7 +1168,7 @@ static const struct scsi_host_template driver_template = {
 	.emulated                   = 0,
 	.proc_name                  = driver_name,
 	.shost_groups		    = hptiop_host_groups,
-	.slave_configure            = hptiop_slave_config,
+	.device_configure	    = hptiop_device_configure,
 	.this_id                    = -1,
 	.change_queue_depth         = hptiop_adjust_disk_queue_depth,
 	.cmd_size		    = sizeof(struct hpt_cmd_priv),
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-15-hch%40lst.de.
