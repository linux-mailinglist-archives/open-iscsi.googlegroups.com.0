Return-Path: <open-iscsi+bncBDUNBGN3R4KRBF4MU7TAKGQE3ZK5MZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 5285D10AE4
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:20 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id h196sf1084801oic.8
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727319; cv=pass;
        d=google.com; s=arc-20160816;
        b=L7neZ+/R2zUdFCxFpS9ObsYcgB6rRodY5ZqZigQFpa6kg9cAgcOjrFmv3MSYKZ+x3A
         VnEteMuachicCAh7jhugJmoThwS4k/QSYc/GpGDzqO/oL4ydXL2D9NfC8HA3plh8kBEc
         wob2J2RFIHzSUwtSuv9WIMhOVyPWRx93KEWco8292Bapox6VLgBFOqD1c3Bp1p1ol+wK
         rOl8B5ncbncg8W6QQoTgt288PItFOAcZAWFKkQsCR1gpSOle5vOo5ND3Lt0nR0rLKtz7
         QK9y3xJYUNjDZ3eqXIuBJ0/2bBU4g5iNaEyyQPeUeMORiOqAxwUfDP7mc9u9qCvVc2iE
         WT4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=okMNcatHwxJA0LZ3p0mcsrIG3gHEVUKMdUc9Ji0VfgI=;
        b=Ow/RG+1Vj17L3GOCpRhDEtZlulx8qfJ5JBrBkT+/1w0Up3W7pu7DHgebVUTXWbkKdv
         kCjekqVP+QsfOx+Y9Y7MtWYZXCu/dDa9UWLhfyVvkDTzhy2N5RDBOr0isWHWMqKDfr/f
         me2osgDS3Tm4tayLNDxX2b0oLsLYsIenvlsFy65ZX+BDRmIEq5cENLAPkZPMw2Ykvg4D
         CP3ZnNRxB6OwkZq4YH4EU/XCL0WfvCRXNKFKKfBsjYlSux1ifRx/ex5S6j9LWD/FB+x4
         b0yOE+DzChRqa9lSswTfmsHimGj4gI2KNkUN8m9LN4bC1GpGzgnxFScUFuXkFWvxoNH1
         nyCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=SBk3G7PW;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=okMNcatHwxJA0LZ3p0mcsrIG3gHEVUKMdUc9Ji0VfgI=;
        b=N4QNoAR+Gmczc9FxJeFT7KWh9wXplDzvQ6kZNoFVRHKohvrIKQt2PhIIHE/jJIo4C/
         bKmhMj8K632Z0S8DUkre87T5JQobCzhGUSmIAQKGr4UXsGkWLrP1fWmC6ATRdc+LsIT5
         p+hpcOHplxadBGErsmIz/se4NtcHMCpjYO+rkm9/fy8VGq+oyu9HaE+sgkqiaEEtRPCE
         f43XRX8QGmT/1xHmZ2EPz+Sy8UcHPfgh3Ii3Iaevo6cuOrii3+YbG3AwsCAPkVw/LrDk
         R9QNED4VgeBb5sJzY7re1RkORNTd6TOC6qXtqt74STlit+BXDI2Da1MXeRIKeUCxfoUn
         DRYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=okMNcatHwxJA0LZ3p0mcsrIG3gHEVUKMdUc9Ji0VfgI=;
        b=nY/SHfEtTjy65InGmpX7Jn5/rDo/KhF0sazY/CxJE3DQe/MgWbA/9623VvFJmywMnl
         Sw2G8UjsUCdRIuDaRS4xLbaSEdzxRJQCBW/e4ixnbc8iw4e/QFxlBlNkhnZ2y0UJZcMz
         dnrGPXpz/83oFHoa/iDFUlHAsb6vmIngnJ1SoF+NCrUNBn3OsAB7UodWJTjOnXgkf8me
         guSq83RGW94b5v8frIwWj6QxvdUoc/0AoAML//K/H6Cmk1lr4Bu5SCNG8ruiPHWBLCaW
         oqS5boI013H50QgBQMY5L5mR25ymygQ6hmc2eXOkASc6gr6FGfb992bJ2McMC/p7liSx
         qOoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVS5utKsr2ebIaEICFL9ioTl2g3flVH9uyq2MnGPUyhMLyST0TK
	EGnlNsSkhQfXqIUCTiaOEVI=
X-Google-Smtp-Source: APXvYqzSGeKbbGRV5iJ/oBiQrSlZ0+LX8yB5DOXFszcNIFx7AhPH4tyVF+xSa5XxPfocKmGGPPhtAA==
X-Received: by 2002:aca:d7d5:: with SMTP id o204mr7033161oig.23.1556727319221;
        Wed, 01 May 2019 09:15:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:b3c2:: with SMTP id c185ls792950oif.0.gmail; Wed, 01 May
 2019 09:15:18 -0700 (PDT)
X-Received: by 2002:aca:3f83:: with SMTP id m125mr7487783oia.60.1556727318865;
        Wed, 01 May 2019 09:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727318; cv=none;
        d=google.com; s=arc-20160816;
        b=BQZhjZ0MUGLJh8+Poriokps2se4Uyu/19KN/EwSvLUcFFh8ZXBRyZwjOGyYiHiXJLp
         2u05imEOfwryQdqYmFsjMTOLj8au5tfSxFc7dFGJt7+eddE1DY1T+0KOLP8EplxuSXF1
         50sf7H6pjF6b8Chm5rJrNYk1lNtiFAGTv/ICW3LxSO7AX5/ziqoTouPsAj5ngYcBv0y3
         qYuvj5axQLJAccM8OoD3wvgc+7ixHcXKZZw/PSsUQ99glb/hJDcfgk3uauScukAXqEQF
         1FlMa56rtCurV5/ZfBBF4Y99KHBwJ2jf+XzUMQNf4R8stlSJvxUdD5qr2XHSrWJmqbin
         c81Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GJLxfg47z5zmIYUnbxiCrlaCmFGP4tL9Ue8BxujcGKc=;
        b=GK6h3Pz7xZbOquSUUwiruqBiIlbXvzoj/4/ndaFtSEy6tiuv5GpBvRtYowSIr0FEbU
         7abL+NSt4cYy8DtVizmbMdy6xh5NsIcMKpgqLJJeQ0DIE6lQd34y7dvQcILbmqN2ILku
         MiQhXGWjNwrcy3V6OJ261Gtk3Q1ubpb6K6KmP4h63n+OrEQ3SRnoQx5VGe9Hmzni7tM1
         zGcgoMH1+UxrNw3HGAliJYcpdLxHWHub0RXvJHKuDGxxO3kg8v45DZnBuCvNMnJUXfJH
         lPnrGifiWfMWW9qcjJKpLfkdDLCjB+us+J7W3MrwrAkhSklAn6sI8vV6iciXKXqHHli/
         6nmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=SBk3G7PW;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id f8si519045oia.0.2019.05.01.09.15.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrt1-0005du-NP; Wed, 01 May 2019 16:15:12 +0000
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
Subject: [PATCH 11/24] libfc: remove duplicate GPL boilerplate text
Date: Wed,  1 May 2019 12:14:04 -0400
Message-Id: <20190501161417.32592-12-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=SBk3G7PW;
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

The libfc uapi headers already have proper SPDX tags, remove the
duplicate boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/uapi/scsi/fc/fc_els.h | 13 -------------
 include/uapi/scsi/fc/fc_fs.h  | 13 -------------
 include/uapi/scsi/fc/fc_gs.h  | 13 -------------
 include/uapi/scsi/fc/fc_ns.h  | 13 -------------
 4 files changed, 52 deletions(-)

diff --git a/include/uapi/scsi/fc/fc_els.h b/include/uapi/scsi/fc/fc_els.h
index a81c53508cc6..76f627f0d13b 100644
--- a/include/uapi/scsi/fc/fc_els.h
+++ b/include/uapi/scsi/fc/fc_els.h
@@ -2,19 +2,6 @@
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/include/uapi/scsi/fc/fc_fs.h b/include/uapi/scsi/fc/fc_fs.h
index 8c0a292a61ed..0dab49dbb2f7 100644
--- a/include/uapi/scsi/fc/fc_fs.h
+++ b/include/uapi/scsi/fc/fc_fs.h
@@ -2,19 +2,6 @@
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/include/uapi/scsi/fc/fc_gs.h b/include/uapi/scsi/fc/fc_gs.h
index 2153f3524555..effb4c662fe5 100644
--- a/include/uapi/scsi/fc/fc_gs.h
+++ b/include/uapi/scsi/fc/fc_gs.h
@@ -2,19 +2,6 @@
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/include/uapi/scsi/fc/fc_ns.h b/include/uapi/scsi/fc/fc_ns.h
index 015e5e1ce8f1..4cf0a40a099a 100644
--- a/include/uapi/scsi/fc/fc_ns.h
+++ b/include/uapi/scsi/fc/fc_ns.h
@@ -2,19 +2,6 @@
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
