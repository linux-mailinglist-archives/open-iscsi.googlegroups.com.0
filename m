Return-Path: <open-iscsi+bncBDUNBGN3R4KRBI4MU7TAKGQE5QFLWUA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id E058710AED
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:32 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id w33sf8954151otb.23
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727331; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfqnHoOyt37DCOGmBTh63dAAcsr5NmqVBV6rA+5NNHnPkLPkj3dmy9/IgXu24aav3r
         ya6BXyFZToQBDeeN+EpooyzeHZiUFx5E/vy11mRw+N4WAxH/wl0sob2t8Fns5+1Gw0fP
         /hUAYrTrieker6q4T2l+g5HZ7H7sj/fKclqBaeXoLg2sdY+4+IyoAPOClP7A9lxHWXst
         CzzhA0okETPeQWBoXj1QJ7Mi9AfK7pr5D5dPt015K7TpJD5EoWmwe9l/gKNnwfmj8rh4
         NhCcQ748Svs8U86IPtmvisb89O1keGpIliLmtbXfh7IxTpnneJAkpeEhh8f2jTnq92iG
         sVTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=cuVRKOPrW40fHMILcLrILba361S9KtmjRg/5WZZvnno=;
        b=yANB0L9LK3ZpqQomlyedpLYxwZCiymaWHPyOHyCW++8DK0hqjjs1JzcYB4dsF5aCoJ
         R/axo/fVcDErOmBwfqsEzl5mqQtKNaGZpSi6QGLnYWh4haTzlf9dd6lc+cuD6ClXU+sp
         uP1EkPZJANkL5HlxwEENn2boFH0PYmui7xGvSVc0W5BYZiu8QEQGtMe0BYI+xKt+wX1+
         /lGm6m92O0WpO2pzv1V6tM1pit+k9s1AjKyVszb3ZRBvm4R0O4IPITeEyVBoKQ9CUWYB
         ecW6WDxKbpLGIsbsm1//u/zhOLvqz1nwkzqNSoinkJAdLdhMvLzQ8lvBj+R0O01TEMdP
         wB5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=ffNcogma;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cuVRKOPrW40fHMILcLrILba361S9KtmjRg/5WZZvnno=;
        b=ZBmWs/2CXTwetxk88AvMjj9zmz3KRNZFPaRuEobpYOVTsT/LnRAAhgPRhgX/AtBtPE
         fmOJ2lHvbIAtb0pXWk5a5+TCOwvHWHmJnMK0ue3Zc+SaPBbkOoW+/sl0U415A/5Uk8ZR
         uv2v5fNvS2oxaJOZejKkzgthal6zj/tn/I/ZWfzlkLPFtskLmry3arQnYfQLcukHkCaW
         Sh9IQobsBZQpQzq3eIquoDF7u2f1R8vSw8zQgMTpRiRtSW5OAGDpDzTXfeJ/053fENa5
         SYe+vfDWrNCQpPoW+rb11wGzyWwd2Ta5JSgBvHWP6bE6i+O+rUXOMsbsLAhMZbH06gGm
         40qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cuVRKOPrW40fHMILcLrILba361S9KtmjRg/5WZZvnno=;
        b=l00dZAD/4B+RwETD+/ukKExGO50SXCFYdoYNcBlUi/ZzitL0EBNRbUbCq8J/gYvgwJ
         8jdKuXA307OptzuLrOA87rzZXBDp0fDXfYGT3H3H9KxmQAriQv8Y79bx4ZUbAx3s7pV4
         mhil6+Hq5fz1vwe3XbE7yG2QMdGPmO8onAswDTFPWmxc9AeIb+dMi4j26ydKxnqToLv6
         sSB55T2gk+sIYcXIeWWx3CSoVIImeJWWHQM1mh5+qzUdMbYBeJaBL1fA3QhoR9As3NiD
         l7+cSYQHcJEcge3bo4+v/+FxoCXF6QSOSd3PjEI+iwBAJrws4jeCu1a17ucPZxXvH4+i
         WEgA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXuQZvm2L4gxvbgrX/z6o4tlcii2nNVZRBCnPifdGqe9fKAQyDc
	pcOAYMmD/jNE48IXW7S5tUo=
X-Google-Smtp-Source: APXvYqx5lmC/uleXdy6yq9a4AZN1e4JNSChECCqhE5+dLT9hd6KcCipLt4x718vsfgG6gh0BpX/Mdg==
X-Received: by 2002:a9d:6a47:: with SMTP id h7mr9410133otn.158.1556727331847;
        Wed, 01 May 2019 09:15:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:aa94:: with SMTP id t142ls787188oie.12.gmail; Wed, 01
 May 2019 09:15:31 -0700 (PDT)
X-Received: by 2002:aca:4942:: with SMTP id w63mr6953869oia.33.1556727331568;
        Wed, 01 May 2019 09:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727331; cv=none;
        d=google.com; s=arc-20160816;
        b=AYBW2o4+xdhPuc6Zyeev6Gy3YD9tL/agLpIvcBDEd5OUgOmmnu0rQk3ml9FbijnSRt
         1Wixq67zW1VOqu37A7lQKS4FjpWMyMyIL/XNfPbbvHGpOJc/jg9KFQwLBA+iJPfvo0IS
         MEEsMy/su5RbrCwd8XeiQ2GtOzxnNnI6TK+t+SAaV+VWP4kT/KZB11Oq9SM/z85QnVZA
         db1npkLoGwsYK2niQQdKby8NrkHgr+7SFX25ZBg3DIcHfh/6cB7EVwm/2t96MZgXyC7q
         pRkE8LcD8csVvuqxCXeDagxhMEHtL5kh/+2B+zq9/LRo4jkD4Qek9JSHOdMOoT6AltSZ
         W8hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5DncLWmfQGv02tR863wEfmmFVjP6/uAldmRvmhszOvg=;
        b=aiYK2EZzD01XkslXV/k2NCmtjuHkMUiF1HvQIrV1IgRwHcXgG2ESu015/BMoJ36HE1
         ov27ij+0whfo4Z8viXc/u6t7AIugbFfjsyZVWcR28YxC+WSLsz2ToARXycAKBZbDsBH6
         SXIFjt0l8yK4/DNABw/ypm+bRse6ya36bJwsHG6LbZ6A+iXQ0VCV4VYdMnjm3Iu5J/fD
         pa8bF5uWCJaMC1fYzF3nGf6NJ5P6RV1xbHM6U13aHvXtkj4i8gzN1Y0YUX+MuBvVJKxi
         h/d0P53PTWzJk8CQoSFPJTJ08F9ziSkg1VP8WBb+8kNOhmv/axFoiMSfBh3Gbf8U+grw
         BTxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=ffNcogma;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id w134si737897oie.4.2019.05.01.09.15.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtE-0005fk-KG; Wed, 01 May 2019 16:15:24 +0000
From: Christoph Hellwig <hch@lst.de>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.de>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Willem Riede <osst@riede.org>,
	Doug Gilbert <dgilbert@interlog.com>,
	Jens Axboe <axboe@kernel.dk>,
	=?UTF-8?q?Kai=20M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	osst-users@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 18/24] sd: add a SPDX tag to sd.c
Date: Wed,  1 May 2019 12:14:11 -0400
Message-Id: <20190501161417.32592-19-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=ffNcogma;
       spf=pass (google.com: best guess record for domain of
 batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
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
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

sd.c is the only sd file missing licensing information.  Add a
GPLv2 tag for the default kernel license.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/sd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 2b2bc4b49d78..4852c2223359 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *      sd.c Copyright (C) 1992 Drew Eckhardt
  *           Copyright (C) 1993, 1994, 1995, 1999 Eric Youngdale
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
