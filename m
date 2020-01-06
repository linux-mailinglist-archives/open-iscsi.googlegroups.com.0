Return-Path: <open-iscsi+bncBDA4VMEL3QNRBWMGZ3YAKGQENOPBHTI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 636991317F7
	for <lists+open-iscsi@lfdr.de>; Mon,  6 Jan 2020 19:58:34 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id j23sf10891105lji.23
        for <lists+open-iscsi@lfdr.de>; Mon, 06 Jan 2020 10:58:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578337114; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRZjWu5rFlbS3C7xSdwMijNL93Dmx6Cvh9AwQrzkz1FA9aC9a3Wb15GAWSuG1zOGA9
         a/P9+DWvY6b3/LARY5p2GbJ3UDqaic/yOd1zgXvjXvAB4evGSPPlnrMeL6i0vPQVFBSR
         t/i/Ia6seHEogPl/JgpNPRAG7e8oUIKJxQQlfVzbf+8B5wnh4/ZZub5JmEDmGh07MZ/P
         6EZxwjX7WzSrPbC6/mmCiztVOJEXodphrXTWKULN+3QZtdA0K6cAgoF/ylpVnKc76jmk
         F7f5XyXnz6ZYxdSu2T2KiQDPcvzj+Ny41hiC92J1NhanruZk4ssEonDWxF0zpdHcFCH4
         f1nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=47+X9CCXz1cvTdQJZlU5KXgsjl6iabqZ8L15MqIg6Y0=;
        b=X/7BG2xPjdfIzeQH4lTQn82WCU/IOUOqRmXf30b4w/n0HEyFzMm/+iRMbFcw39kDHR
         Vvmt5VTYQ3fcgtvmBgS/c0BWzqgWJNXGSmYcRKn9/yjJemoSiBcSpF0s42qeE5Gc0rtd
         LeVhW0h/Bbpsx5WlD/dF/bOSpkuExClS1kTdn3PhRT7oKXsGAvMeQWMnv6fsPovcsffg
         AI3Oo+j1ulxx02art16EuqR39SCph4YmTKXHz6nXjiKepfDnSGtJn3LWegfF/z+zTO/w
         t5D2yUimdg3v06OTD9JhJYQOGEbqc6V6/l6YnCeK5tHR8+2IttK7XCS86QFZDb98BpW8
         NPVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=47+X9CCXz1cvTdQJZlU5KXgsjl6iabqZ8L15MqIg6Y0=;
        b=K90z/oWO0UDCRXzH/bFYn4MTuGORwLi8gWHr+NU17IMCphsZPNdSLT8msKq+QZRIMK
         ch+dFyXsCJh50VVSX/6dumbV5AqTdev1Ee7osL5hYNe009GKCckL7X3NIT3b6CmTIzAB
         jv15S3MZpGit+KpApejh7RnJAey7VpNIQr3Pug70T0AvfTWWUaHjYJZTYT/uUhooojoO
         Dt+vX6rUVN4LMPKnxJRxO8oxt5AIJmPMx8jIz0M0yS2oC287ywuZDr8s9Du181dvc662
         5OsJNuc0uxLpgA9LapFBHJWQ+cp/N3HERL6vKprUdPt1LEEaOnHoVnO2CFbD1isRsJ5l
         n/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=47+X9CCXz1cvTdQJZlU5KXgsjl6iabqZ8L15MqIg6Y0=;
        b=clhO9speUVuUeqz8pbnzCkOKYnKAVdCKFjaJQ4thS4gSUaQ8jW9WEi4nDzkivzmpcN
         pUllDB8Fpakv9iHLfKuzRFYDs08W7FAxQzJBsMAjmyN2g8UMEsWYJlC6PARvRlmotaxn
         eZ9VCGxCmWK2siirFVb7MzOINA12U0KCA3120UWGmnM0FNYBAg9eYhIBn1/o6dYSob9e
         PxLSb76veztwWy075VJYYnPOyvTJqQe/kKf+H9Lshtd08eIkqR5Ng4o69yE3Vh2k1bge
         ijPV41IqTOis0ZmFy55cXNFXvJ6h9HaS5sLMuqFqlumLju8SZyqIjEAbwhY4vCkqKwhm
         9zaA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUK3O4oJAZ7I1XXvVWrXErJZhxSRzrP8O9pVREKCXAE6KoQFXxR
	+oAXSFFMisoh69AMP/+tHzg=
X-Google-Smtp-Source: APXvYqxI+ySVIDhalUT8CKfO8fMRpJyXIl6juIuibljOvrFZdfOIM3ZnFEMUl7S3wfyCJuK/1RVjgQ==
X-Received: by 2002:a2e:9d89:: with SMTP id c9mr45964828ljj.129.1578337114024;
        Mon, 06 Jan 2020 10:58:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:4a62:: with SMTP id q2ls4220560lfp.8.gmail; Mon, 06 Jan
 2020 10:58:33 -0800 (PST)
X-Received: by 2002:ac2:44a3:: with SMTP id c3mr56829620lfm.1.1578337113498;
        Mon, 06 Jan 2020 10:58:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578337113; cv=none;
        d=google.com; s=arc-20160816;
        b=T/DuF3X0DsHjiuWSpeIY+xAfDGv1ThHTEKQJrpj/ljqw7WI4jTxWsDk7yDHICg4cIa
         8Ffiq17QmyKAiYg+5cC19dyi2sjDaFcLTCj/6wxB2FLOhOefLShGVR8gfltH3asYpaua
         J7w2AD8PHmPkiviIcOD9ssTAJouaL57MQIjN5iYxLV/P6QfHp55zyl13BeIDQkZRmlkf
         40MC5muhGyEIplLg3D7E9uoAe4K9x0+u8wk2nW92G7T0CbNwFuDDHODBIHRTyWD1AgSn
         qpDjhGL8PGaGnFMnqXbt+TKNa9SgeNXvjRna7h25ALS13SVsqyRCPf307a6lOX4A/Ol5
         zyAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=LGnZKdBBZBEBliR/WeYoazvbanNJLsBGTDKgtgAv2VE=;
        b=DfIawOmFqUaCbokOqJZrP/mfhYTH8POX4affl+9NXlEunfL6q/55eA5XRoyRY1ACYd
         66JKh1ELTeMae2ZIXmS39mPxPAHHnPVIllW+Ap6sw+4jt8p7bF064VHkTTYDBzOzw+7L
         s1ztkbu8J7i4QyNCa7px85K2rXePlGgx6JnYzcNWBEtBuuX+T+rTboBnxaYIoAz6PGrB
         lOlLbJlZB9VAnsNSUm/54I3DpI8qx/t+o5jJS1M4LxaQYWUsVrctA5jwqc92zoqI7mVV
         La0w7Lzzx97TX2v9UtycoDkB/NNfePWhydRmyCmdBWOU3LATJHJtKRadpXSQLE9+klVA
         MqOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id 68si2452935lfi.3.2020.01.06.10.58.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 Jan 2020 10:58:33 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2610:98:8005::147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6AD4429166F;
	Mon,  6 Jan 2020 18:58:32 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: gregkh@linuxfoundation.org
Cc: rafael@kernel.org,
	lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 2/3] drivers: base: Propagate errors through the transport component
Date: Mon,  6 Jan 2020 13:58:16 -0500
Message-Id: <20200106185817.640331-3-krisman@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106185817.640331-1-krisman@collabora.com>
References: <20200106185817.640331-1-krisman@collabora.com>
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

The transport registration may fail.  Make sure the errors are
propagated to the callers.

Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/base/transport_class.c  | 11 ++++++++---
 include/linux/transport_class.h |  6 +++---
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/base/transport_class.c b/drivers/base/transport_class.c
index 5ed86ded6e6b..ccc86206e508 100644
--- a/drivers/base/transport_class.c
+++ b/drivers/base/transport_class.c
@@ -30,6 +30,10 @@
 #include <linux/attribute_container.h>
 #include <linux/transport_class.h>
 
+static int transport_remove_classdev(struct attribute_container *cont,
+				     struct device *dev,
+				     struct device *classdev);
+
 /**
  * transport_class_register - register an initial transport class
  *
@@ -172,10 +176,11 @@ static int transport_add_class_device(struct attribute_container *cont,
  * routine is simply a trigger point used to add the device to the
  * system and register attributes for it.
  */
-
-void transport_add_device(struct device *dev)
+int transport_add_device(struct device *dev)
 {
-	attribute_container_device_trigger(dev, transport_add_class_device);
+	return attribute_container_device_trigger_safe(dev,
+					transport_add_class_device,
+					transport_remove_classdev);
 }
 EXPORT_SYMBOL_GPL(transport_add_device);
 
diff --git a/include/linux/transport_class.h b/include/linux/transport_class.h
index a9c59761927b..63076fb835e3 100644
--- a/include/linux/transport_class.h
+++ b/include/linux/transport_class.h
@@ -62,16 +62,16 @@ struct transport_container {
 	container_of(x, struct transport_container, ac)
 
 void transport_remove_device(struct device *);
-void transport_add_device(struct device *);
+int transport_add_device(struct device *);
 void transport_setup_device(struct device *);
 void transport_configure_device(struct device *);
 void transport_destroy_device(struct device *);
 
-static inline void
+static inline int
 transport_register_device(struct device *dev)
 {
 	transport_setup_device(dev);
-	transport_add_device(dev);
+	return transport_add_device(dev);
 }
 
 static inline void
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200106185817.640331-3-krisman%40collabora.com.
