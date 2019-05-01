Return-Path: <open-iscsi+bncBDUNBGN3R4KRBK4MU7TAKGQEXLW7GMY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4963610AFA
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:40 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id j62sf18550220ywe.3
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727339; cv=pass;
        d=google.com; s=arc-20160816;
        b=UEcs33CVk+IspeSpUOce/p6+LTwajAtRJk1WW0q+tRGDaOQgYpfz/901JPxFwLjqV1
         zjlfWbELHjKzdQ/gbzO0rtxA2zcWXavx+MOsvk/iQnmMXkbPKYozynEkVV7wKrIscuxv
         naDP4Sa6+9/HUfgqYccx2yq8RGdq+IknyjsbkoIYFSQwFKTco0AegEIlvxt/IJaPevwN
         vHXGXoCPyWCEXHTNxBobVIuPz2o1U5XhD2HhC05YrV7pDO0WGmGef/JaGFlL/bkmnLdL
         Xple6RADGmfOpqdllOw5nldJ1G0Euab9SeWA8qTh1d9D5Ul20zZn09HOLJhS37kvg9nP
         AzsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=3aTPEFlXogg4awK2titWbcmMPe1zv1LlfT2vU7a8wmk=;
        b=u6bJ55//kgVeLM0tMWvcNyQpbr5uOi1Ai9zlScdht6o5H7KVogJC7GR/aVl371kq1Y
         rlW/e8muLDkeSzg+E7TtC6xYZR2zfUNOuMFJmH3Ss6L1imQPWqF00aBEdwW+3mmD2G4q
         IFZPlJC8AiVKZaaPup2t8ZV436cxvMGwIDjaUN/8lzD5+XQ8vRNXTF4645x/d5OiUh9a
         uXI5Jnhaw9cbLtLijYNliLpw717wwr7Fd/pXAVhCOm6Uf+xTf3xFt63EAFRkAiFOyLRN
         O4bFPO53JeXV99HUKEmrY6lKOdRVZuDrV+zDE+P3UQpw8D83o72+9V0Vq/DkCRllllMG
         x9MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=aPIp1h1m;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3aTPEFlXogg4awK2titWbcmMPe1zv1LlfT2vU7a8wmk=;
        b=XNUZZa+j2CvAiv1j9EcNIIXeGDysHew+w9XJhmLZQg3YWznNDeP4VZKY43Nd5A6UlP
         A6wsNJFmlN9lbxlIcSD9NY1rAFTMjTQ4G5uCmLXlKJQ2R1w+NQDh0myCpzFtwq+TkAGH
         0CjxpSfepZBaiga4IyPM1YH9ZxNVFw/2coRR8cH20US7hL1o9AAvBu+g2kJNyM/C//Mz
         R42l48RLi3Glrquj+f2AyqHENYpZ6I6PF8jT5Wyd/aPXmLMlhxaIBB6Uz+KvAbuc6cSi
         x7Wq9j4Xkg7ixUlSIiW3W0KD6/fYOzUNnsyaxZ5mh3eleoywQOSmp4IE38OEJijWiYzV
         SQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3aTPEFlXogg4awK2titWbcmMPe1zv1LlfT2vU7a8wmk=;
        b=P5xId2p93AfDHFuR9UFmY/G7W615QlwCcsM65RgqKXs6n2+sphrRyWZAcdeDs/vbQ6
         4gBAgKJpoG3bmZtmHIfCDIKDt0K0ds1o/u1i58GOZvAoK0bFyP34gM3QOGQzY8QYL382
         sWUyIWf+KGgnbaS39H7T5Sgs/1DR72sEsyNzi+TlGMT6rBnApqRI/6WB+BDoEw1jW/99
         ACSg4WB1qDGsC+J46m0E4l6PXHsRzLdhHru2MxqI4MsovaoCFH3L9Fammi1Q5K2uKziw
         Q9LCEMu6lcFqZccwrJevvA6ofGkvvsxqPSnr0RI4yLNJi6RKeP7dLVGbs5xMNBnYfF62
         dOjQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUZQLGzrb2baTb/m21u9eYf6T5kypjiNnkM5Y2f0gBGa/FhkBK8
	bAdw0NjTZkNU57V+ot4Pm54=
X-Google-Smtp-Source: APXvYqxWBjgJZlB1F74vmHrbL30KBUyq3b9xO4s5yBlTEtWvst0ZaxR4aLLe3ZxZbLn3Zh7jDQIL9A==
X-Received: by 2002:a25:4946:: with SMTP id w67mr37551578yba.445.1556727339409;
        Wed, 01 May 2019 09:15:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:4190:: with SMTP id o138ls125278yba.2.gmail; Wed, 01 May
 2019 09:15:39 -0700 (PDT)
X-Received: by 2002:a25:e783:: with SMTP id e125mr62272311ybh.89.1556727339153;
        Wed, 01 May 2019 09:15:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727339; cv=none;
        d=google.com; s=arc-20160816;
        b=YCv75431w2zBzKCuV4Rruy3NSx7aYjtmrkMfViK2Anfw9PnYW1UuZUlFY8iPA4zySc
         +RCVbQjy0LLPS3pcrniKS+fTYYqgcF0CiSNTYVF50E8E9pJBtXoYcGAT7uMrUFPJmEYg
         Yhw4uh4RP5lfd20AeMKfneMwU2Ljb8hLVVm6HIFQgQBboVE6+/brY623Jxw8iGkghDNi
         7dtqbw+PSmNmdoj9BEkRuGwPjBRbiYIwvqIvdKeDHPLggJqgATPxyve/W54MTTykg+jq
         cgWBxKPPnuTqQD9Bm6S6SI/IJ1zSrCqCFGMutkyGvdggYhE58aEdgFTFAtBPaQQJL9jf
         4t7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7wF9/X0wGwJAMhr4kPyoJ140TdbKKXGR7HzBAxsGj/Q=;
        b=NFMOCqRL+G7PByQBSk6IX6RfyqV+eFhjJCkcnvaBUS5zBgP+1/NGuKnvXxeDjeqNdg
         yl0djlY/sSVHZmarxR8uX6cdS31IZR/o8Yw/oNlNH9or6WZ+oC4PFiYJYgUOBO/d2S2N
         MbyatoDkoOgcoI8/hDfPdvMXf60dgiXSy4XvCpM1iqCMv09ZeazZgOYx6VcS07BzJcm0
         OrxDruG22+eZO9/7qPRhyGsdzBPSpLGOHXFo5Et2foxRqiH0PiUfTw3OfUI4mMvmwGrr
         VWSMa2B7vmbstBzSSPNFMutM6iS7hAvyiFtbI2xJ0GXdsCm7a9C/MDSwhUck7admOYtQ
         rH+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=aPIp1h1m;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id n194si184862yba.3.2019.05.01.09.15.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtL-0005gs-Sz; Wed, 01 May 2019 16:15:32 +0000
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
Subject: [PATCH 22/24] sr: add a SPDX tag to sr.c
Date: Wed,  1 May 2019 12:14:15 -0400
Message-Id: <20190501161417.32592-23-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=aPIp1h1m;
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

sr.c is the only sr file missing licensing information.  Add a
GPLv2 tag for the default kernel license.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/sr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/sr.c b/drivers/scsi/sr.c
index 039c27c2d7b3..701d1e68d86e 100644
--- a/drivers/scsi/sr.c
+++ b/drivers/scsi/sr.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  sr.c Copyright (C) 1992 David Giller
  *           Copyright (C) 1993, 1994, 1995, 1999 Eric Youngdale
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
