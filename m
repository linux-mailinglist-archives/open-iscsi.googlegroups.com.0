Return-Path: <open-iscsi+bncBAABB7FDZCDAMGQEHENCQ7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 877393B0A72
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Jun 2021 18:38:22 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id q14-20020a4adc4e0000b0290249480f62d9sf46566oov.0
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Jun 2021 09:38:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624379901; cv=pass;
        d=google.com; s=arc-20160816;
        b=kXsbZxoTsVWO/FN2I9Hy4LvahW6roLyS+xt+x/ke2FMiE8Nk91QIE45qLGjLEklc09
         2/YfXqDcTmFQdUx/hH0iCJSlcgCY2sO5in6zrsYy9mnN4XSnUWksnzbj7mAqJPyBCzk7
         ZdV6N1BDr62RrL32KrmO2KLGMimGajiQvGA2HEzvKnlT3m0AW/DJbMLwgwnTIWQnFoGO
         mn87YORioAQl5Fl+SYl0W2YJjgl6SImPEbGS/O5pDUA/1CyxgZyQibzUCXEGdcA4nZK9
         nE9MQ5MwRGXpDvCK28AUq54P/a9saYdew7NSPcYq69xRxo0r4DSukwUdO8vJJGQ6YZZx
         dCKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=NVb5igMWs3VGaAc580TpaTV6Q6WHoogdubL7KocOxXI=;
        b=Uqfqd2ioOVI3KjKIhyuOZGBPlZVjqpSlSMgiFnHDy9v4lkvgbmbvEt0Z/m9MLW58m1
         s9uPr/0XRjNJtn0GQWnBmUfD2S70qaUn8jouZwKrPQlT6bCOW14agroJrhy8TYWr46Nu
         ffkT1yEWJ8R9O8uBXpYGUIF5DGq4uKyh7vbFmaV0Q1kiKYaAFYdiyWwdBdriv6pEyZ3e
         F9rTznHSmhpiYnpYqcIlSgm3j8B96aa4ZrGEYA8ENC92lMNVQoemVWup7hbZpk9JV1ti
         NBzwbRElEDnc4EI9T3Kfw46Cw+DgskSPhFx/38GpcVDmBpKU7luSZFNY3cnqu0kUox60
         Xh0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@vivo.com header.s=default header.b=aqYYjiG7;
       spf=pass (google.com: domain of zhouchuangao@vivo.com designates 115.236.121.145 as permitted sender) smtp.mailfrom=zhouchuangao@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NVb5igMWs3VGaAc580TpaTV6Q6WHoogdubL7KocOxXI=;
        b=Dn4tvSvR1IYjOjCyMTRy2XMiTM2t3NlP1rQF2RRhvBrXxomGEQ5JS7d/8QyJ/GW1Ic
         P36dxfeitOyHTQ/qczf40tXNvbZkWZ2oVNTtfqSfK+wznPMloUW8KgRptV7t16QCCB32
         DE+Wn5kGVytiVJt1BGfil4XdA9qTprPRRMTNBi/W5U+Wv5QjLT4HVAQVKzud+6wgU9EJ
         2+MPMZdxcxTiFEHBBKbp2dYfwNtUpVZEH4ugcrmww7LoRGqi9fICWhrlZQuIzC+xMsQv
         UTveccg4bbm0wvUmzATBy1KlwYVcaGK6Ll9SMWscbX4HcD5RMi7FGmoyKT0s/HZdO7Qx
         V7Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NVb5igMWs3VGaAc580TpaTV6Q6WHoogdubL7KocOxXI=;
        b=qVm02IOtbvgQlvOh4lrrOqv59nzsi25d5Ji62KYHyCMG5kdcmIhVZB68h6DmHMFIte
         wx2AWe58oVKHnH1/T465x16hS7XIUL8kdRlOMPUUc5CsrmM9PByMBsQwlfbjqwsKIVN5
         1xxkofxfqrF0aDMYejtkMT98ff9ArgdGY7Zg84oG3jJDx+4+lfjWTaJy/nf7GgA9jHAv
         C9/Aw1AF3wCsVvs6AjSJA/qL+dFz21n7izYeNq/W5DWIkB/HHOPrt403z7WOHP8g8jy+
         7UJxSceHbGUhVr6MQzJhqpKOPYgaCSfd4DBs96s5TqXVr0JouR8YLhtOrfGzBdtYc4Na
         91yw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533WZ6FQYm6Cge+smyR5OzPhPJWdjs9rgWqaUOmVcqEnUH1Dptc0
	91BD/GCAyQLBoWEmGll1gb0=
X-Google-Smtp-Source: ABdhPJzPKru2Tmzk8uzi71i64ezVJZuHTRDh2HAK4fO3i25jHA19F6De7YxIMLhKXtDKTzh6USk6KQ==
X-Received: by 2002:a05:6808:259:: with SMTP id m25mr1468083oie.37.1624379901150;
        Tue, 22 Jun 2021 09:38:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:604c:: with SMTP id v12ls4363993otj.6.gmail; Tue, 22 Jun
 2021 09:38:20 -0700 (PDT)
X-Received: by 2002:a05:6830:1bcb:: with SMTP id v11mr4039021ota.251.1624379900808;
        Tue, 22 Jun 2021 09:38:20 -0700 (PDT)
Received: by 2002:aca:cf55:0:b029:f8:4f65:42b with SMTP id 5614622812f47-1f7386d2cd4msb6e;
        Fri, 18 Jun 2021 07:16:25 -0700 (PDT)
X-Received: by 2002:a05:6808:3c4:: with SMTP id o4mr5875215oie.41.1624025785009;
        Fri, 18 Jun 2021 07:16:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624025785; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUaTUv+jc1tYkovWB7IqPGtjWYUKxo/4V5Cv7FKiYgHALwP8U00cSL8z6kIwMHfIzQ
         R82tY90pFjDUemTvZIRS0UoINlaotxiTq7bqYdSj6JzFlGMefefzK4HXM/is+dj2pBe/
         go0yTXsFA9gfvcys1rVNuyrCGE68xjyPgRKeghoNDKGdz4T6wWxKzY6dilwWLNN1mh5X
         XMtLxWZaBrqY9Qx2CXFhQfPV9cpkR/yZ4XfvkGAfMpir0utulROmfMFBwUEjpnJchIMC
         uuTSUmlLdVE2dUbmdHH/vx4w2WCbbFxhyEPnx49CpHnZQBo/A6eQ8mFMUx/j39dThu8X
         MQAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UfHdKcHANJG54V5g7ZV3FWJBQ5I+E2Pa+DRQCviz84E=;
        b=ioYiC8ljhMWciqmYE3v+xXcFOnCbH+SmcCRgX06YgdPJsHwCeNWBFLHteH+9r0AWYS
         qV9yqJOmjuQqitDiQb6ZyD+W1CZtlTavE+U7KqXvDhD/dDJdiW6m3gwQX21Dg/idUvSp
         kKL65ePJbih9Inp2bsqU89pOjd4xdArHEYlZPvsXXbTQXg3xMKqNqyoadI8EWOMv0BFk
         WAtcWKs1349aHsPyscAC38yg1KcCcQtya3uzQEgy6xhDuyoB3OzZ7eVcXHeuZ5allPr6
         ZJ97M7HCS7Ss9zGh7jNJ8xc/TcjK9WfRzrxQDztCLsNskMAHsSUwWFRQvpGSwUHxKe8G
         7HJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@vivo.com header.s=default header.b=aqYYjiG7;
       spf=pass (google.com: domain of zhouchuangao@vivo.com designates 115.236.121.145 as permitted sender) smtp.mailfrom=zhouchuangao@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
Received: from mail-m121145.qiye.163.com (mail-m121145.qiye.163.com. [115.236.121.145])
        by gmr-mx.google.com with ESMTPS id u128si916038oif.2.2021.06.18.07.16.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 18 Jun 2021 07:16:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhouchuangao@vivo.com designates 115.236.121.145 as permitted sender) client-ip=115.236.121.145;
Received: from ubuntu.localdomain (unknown [36.152.145.182])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 81D2C80015A;
	Fri, 18 Jun 2021 22:16:18 +0800 (CST)
From: zhouchuangao <zhouchuangao@vivo.com>
To: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: zhouchuangao <zhouchuangao@vivo.com>
Subject: [PATCH] driver/scsi: Use kobj_to_dev() API
Date: Fri, 18 Jun 2021 07:16:12 -0700
Message-Id: <1624025772-56692-1-git-send-email-zhouchuangao@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
	oVCBIfWUFZGkIYTlYdHxpMHRgeGktDQxpVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
	hKTFVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OT46GSo4Fj8JQkIwLS4TCw48
	EhQKCSlVSlVKTUlPS0lOTExCS01NVTMWGhIXVQETFA4YEw4aFRwaFDsNEg0UVRgUFkVZV1kSC1lB
	WUhNVUpOSVVKT05VSkNJWVdZCAFZQU9MSEo3Bg++
X-HM-Tid: 0a7a1f7aca05b03akuuu81d2c80015a
X-Original-Sender: zhouchuangao@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=temperror (no
 key for signature) header.i=@vivo.com header.s=default header.b=aqYYjiG7;
       spf=pass (google.com: domain of zhouchuangao@vivo.com designates
 115.236.121.145 as permitted sender) smtp.mailfrom=zhouchuangao@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Use kobj_to_dev() API instead of container_of().

Signed-off-by: zhouchuangao <zhouchuangao@vivo.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 12 ++++++------
 drivers/scsi/scsi_transport_spi.c   |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index b07105a..2f3b0135d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -436,7 +436,7 @@ iscsi_iface_attr(iface, initiator_name, ISCSI_IFACE_PARAM_INITIATOR_NAME);
 static umode_t iscsi_iface_attr_is_visible(struct kobject *kobj,
 					  struct attribute *attr, int i)
 {
-	struct device *dev = container_of(kobj, struct device, kobj);
+	struct device *dev = kobj_to_dev(kobj);
 	struct iscsi_iface *iface = iscsi_dev_to_iface(dev);
 	struct iscsi_transport *t = iface->transport;
 	int param;
@@ -926,7 +926,7 @@ static umode_t iscsi_flashnode_sess_attr_is_visible(struct kobject *kobj,
 						    struct attribute *attr,
 						    int i)
 {
-	struct device *dev = container_of(kobj, struct device, kobj);
+	struct device *dev = kobj_to_dev(kobj);
 	struct iscsi_bus_flash_session *fnode_sess =
 						iscsi_dev_to_flash_session(dev);
 	struct iscsi_transport *t = fnode_sess->transport;
@@ -1128,7 +1128,7 @@ static umode_t iscsi_flashnode_conn_attr_is_visible(struct kobject *kobj,
 						    struct attribute *attr,
 						    int i)
 {
-	struct device *dev = container_of(kobj, struct device, kobj);
+	struct device *dev = kobj_to_dev(kobj);
 	struct iscsi_bus_flash_conn *fnode_conn = iscsi_dev_to_flash_conn(dev);
 	struct iscsi_transport *t = fnode_conn->transport;
 	int param;
@@ -4179,7 +4179,7 @@ static struct attribute *iscsi_conn_attrs[] = {
 static umode_t iscsi_conn_attr_is_visible(struct kobject *kobj,
 					 struct attribute *attr, int i)
 {
-	struct device *cdev = container_of(kobj, struct device, kobj);
+	struct device *cdev = kobj_to_dev(kobj);
 	struct iscsi_cls_conn *conn = transport_class_to_conn(cdev);
 	struct iscsi_transport *t = conn->transport;
 	int param;
@@ -4448,7 +4448,7 @@ static struct attribute *iscsi_session_attrs[] = {
 static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 					    struct attribute *attr, int i)
 {
-	struct device *cdev = container_of(kobj, struct device, kobj);
+	struct device *cdev = kobj_to_dev(kobj);
 	struct iscsi_cls_session *session = transport_class_to_session(cdev);
 	struct iscsi_transport *t = session->transport;
 	int param;
@@ -4592,7 +4592,7 @@ static struct attribute *iscsi_host_attrs[] = {
 static umode_t iscsi_host_attr_is_visible(struct kobject *kobj,
 					 struct attribute *attr, int i)
 {
-	struct device *cdev = container_of(kobj, struct device, kobj);
+	struct device *cdev = kobj_to_dev(kobj);
 	struct Scsi_Host *shost = transport_class_to_shost(cdev);
 	struct iscsi_internal *priv = to_iscsi_internal(shost->transportt);
 	int param;
diff --git a/drivers/scsi/scsi_transport_spi.c b/drivers/scsi/scsi_transport_spi.c
index 5af7a10..594272ee 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -1468,7 +1468,7 @@ static int spi_host_configure(struct transport_container *tc,
 static umode_t target_attribute_is_visible(struct kobject *kobj,
 					  struct attribute *attr, int i)
 {
-	struct device *cdev = container_of(kobj, struct device, kobj);
+	struct device *cdev = kobj_to_dev(kobj);
 	struct scsi_target *starget = transport_class_to_starget(cdev);
 	struct Scsi_Host *shost = transport_class_to_shost(cdev);
 	struct spi_internal *si = to_spi_internal(shost->transportt);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1624025772-56692-1-git-send-email-zhouchuangao%40vivo.com.
