Return-Path: <open-iscsi+bncBDA4VMEL3QNRBVUGZ3YAKGQEEBGU6OQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D076A1317F6
	for <lists+open-iscsi@lfdr.de>; Mon,  6 Jan 2020 19:58:31 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id z2sf5930706ljh.16
        for <lists+open-iscsi@lfdr.de>; Mon, 06 Jan 2020 10:58:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578337111; cv=pass;
        d=google.com; s=arc-20160816;
        b=AqWAG9HB+lPApFi4xLiuBspmCAWDZvI2mbPAGRZ2GVKYCmTVh9JygpzJ7Ap/vqg/EE
         cYL4M5aWBNPGoFM7E23/2MWmsHQCxGlpdMGBDFleJ4z1qz+qFDk2js8R0B5MiUFiVrgP
         83rQBash8MZfJVrnq6OpubiZSrZF6DtLU1pQqxHDb4n1r5eMCj9jjvf3i4j4jqvpvF5J
         wtdbReTej8dAiifhby6KJ4WXILAUpLGnjY8soXsgvjh6MwNY1kMIjrTp6Gd5uCSr1+LT
         iA7svwgNiaDOYRZ8l0gpwht6ZrZg7McBEt6jO8JIe4X5UOzot7abnA0cEReyi9P+H+7K
         cA2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=YpI+7KxvTIYkW5UUBJEuPTCqn5FxEw0PG+wWFfJu98s=;
        b=HmOdfXxSEQ9qXwwPQvCb3y2Rr2w4aZQV+fNW2F7kHF7GMb8li2FrQrXvxbU4UvkK/I
         YrTzOOMbOcL0MImjT7yGWXvgpEL7mljFAg+Z6adZ5rZmscDei5YqjFOElarKLpbHTCO5
         Q3b3WTlNF7y4cl1zFhWsO+ipvRNWUYMWcp09xcL9P1uVZQD9xlTQ3eZMMDFsXXq/domu
         Vb3RIsT6ImIeEj2BxERptnO21vuVbth2V7J+LR+hhOEpfgcudg/KSbkmTvClVsmyPV5C
         NUlWa3kV0K8bGTT0oJXiEr8D8CuIii8jNZYfKkUnRNpS/mCYNj67yAB/S2N9+L4ML3hh
         awhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YpI+7KxvTIYkW5UUBJEuPTCqn5FxEw0PG+wWFfJu98s=;
        b=kgstCk+U120dR/k3aZO33nWPKydmqPHwxL1frCr3lYgkKBwigthoNkgIItAWwBpI7w
         eXifuNk4WXn4zuSK0bN5yteMUDY8xVPxH2DyRiB10aOK4Sbj57fZ1QJBe3Q2KV85qoGd
         w2a0oYSlpscYBW/N9UAPnMZQlXsvxITFtBcbBkd5xJCjlX3syL3pCkEsKRdF/K/mi+8d
         u1Bdb2X8xgcmT09SgnyPIkdtbAvLTRf4Q/3qpbLnihQ1sG5qdtcKi6n2v6pnY2LlARo8
         XgqGiM7wKI57RDVHqIq2ocn09duz5hN4zU4ZgaC5qApkOee1XNaXk+puhIlL6wmJJEnd
         WAYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpI+7KxvTIYkW5UUBJEuPTCqn5FxEw0PG+wWFfJu98s=;
        b=F8dVNfwVrD+ca9lyFz/onRsjzuRECJwhC1Sj8KPMPhjWkgT4/1OVXDTggouwSCcTaS
         4wubVORKPNe+ApGCGuWJTsYY9do0KSJLhLQFWHKo3QMSZQYbHSc+D1DATg3YlUQz5kZS
         Y4wJuJLbBOhgc9WjLHuTUB1b30yGiVjkcYC+DY0P4EPEt9KElej3y1jUirccY2PxgcNR
         BvbhtUfR8jE9MHVLaRt0A2I2hxGInGAGAT/puUOL2Ke3qC0zWBGrTiDyZwCU9ZRLIip3
         xwuICoO9sTxjd25XW1jSHYCtP8vTaE+UvAM1Frtu+fMvSkrL5Bm6Wvh66SWLKWvftUUq
         SdLA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUtTu5rOge3kXZ79G5jeIL8c9akd1wR5oAUrfvchkW9BKGZWlMr
	19BC/cZQX+DrXNACyopabTo=
X-Google-Smtp-Source: APXvYqzZ3/4lcFiArmFLtUNdaGNWDygieJsmicneWu6UpqIl9+pTR8Lu9JE9diWgVLWtJG3oqYKpqA==
X-Received: by 2002:a05:651c:1b3:: with SMTP id c19mr57603214ljn.115.1578337110989;
        Mon, 06 Jan 2020 10:58:30 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9d90:: with SMTP id c16ls5936909ljj.1.gmail; Mon, 06 Jan
 2020 10:58:30 -0800 (PST)
X-Received: by 2002:a2e:2c16:: with SMTP id s22mr60253777ljs.248.1578337110435;
        Mon, 06 Jan 2020 10:58:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578337110; cv=none;
        d=google.com; s=arc-20160816;
        b=W9303dvgZjFe6xUnMyA2pTn9WM26WZGuUC3DupqXHpnBHnK1CMUDarOf+ByS7Iz40w
         p2bVVmn37/cfxWFRYQPpNmtMEaSLLU0PNmpGjAHxTf0esy5krnUxbvFq3daQmDh+7m7i
         vaESJUaKxXzKxtUfTuu6QA4JA52YgOTQSp1p9lJgoKIGv5Ygc1N1YpN53Ph5gTAjEAso
         mp0sFYDuFg1StNHX0iw26KbxB0v1Qk4Q5g670FnOD2h7zVykaOSLrWXWiiNv3OCa0x7R
         GhIdaT8/nm3b8TfQbA+kEOOS/l6HxrDYiiCwfsK/t6EOPnaSELXBd4nPxUsK/TK5574q
         Sqdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=0ro7MhojDLM5DO9yIYX6YNzkHGI0JkYCv0kBPdYug8E=;
        b=E5wf14t+NnjTAzVvGw6lcWnOt6K2TezAQJJcoWqwX38nE53E00dD9CZVm1T+DhrZzG
         Yy2+m7OCToGthX7OCtW1gp2jCKm+gbXpxoBNZLk79u59M9HFnPckytCDNZGbLSAhtC3U
         nY6W7OYk8nFI1gXUkkpjuhCLe7sNCshjJSSc5QXhhUZzcCfdYy2EHyW4tQXH+omlhlKv
         0KacK3GWCVLHVMIbOW5GbMNTtSZj9t3For5v4CYahWan2RR+2P/OsD2yDrjVJNCPHSxN
         0ST7haKUi9Bt10GkJCX2jKv9X2vA1dugYrxpb0z8Pn6S2TFDCtykrQCNZ3jyLq3r1moY
         ELQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id x5si2682498ljh.5.2020.01.06.10.58.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 Jan 2020 10:58:30 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2610:98:8005::147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 09F3029196A;
	Mon,  6 Jan 2020 18:58:28 +0000 (GMT)
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
Subject: [PATCH 1/3] drivers: base: Support atomic version of attribute_container_device_trigger
Date: Mon,  6 Jan 2020 13:58:15 -0500
Message-Id: <20200106185817.640331-2-krisman@collabora.com>
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

attribute_container_device_trigger invokes callbacks that may fail for
one or more classdev's, for instance, the transport_add_class_device
callback, called during transport creation, does memory allocation.
This information, though, is not propagated to upper layers, and any
driver using the attribute_container_device_trigger API will not know
whether any, some, or all callbacks succeeded.

This patch implements a safe version of this dispatcher, to either
succeed all the callbacks or revert to the original state.

Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/base/attribute_container.c  | 103 ++++++++++++++++++++++++++++
 include/linux/attribute_container.h |   7 ++
 2 files changed, 110 insertions(+)

diff --git a/drivers/base/attribute_container.c b/drivers/base/attribute_container.c
index 20736aaa0e69..f7bd0f4db13d 100644
--- a/drivers/base/attribute_container.c
+++ b/drivers/base/attribute_container.c
@@ -236,6 +236,109 @@ attribute_container_remove_device(struct device *dev,
 	mutex_unlock(&attribute_container_mutex);
 }
 
+static int
+do_attribute_container_device_trigger_safe(struct device *dev,
+					   struct attribute_container *cont,
+					   int (*fn)(struct attribute_container *,
+						     struct device *, struct device *),
+					   int (*undo)(struct attribute_container *,
+						       struct device *, struct device *))
+{
+	int ret;
+	struct internal_container *ic, *failed;
+	struct klist_iter iter;
+
+	if (attribute_container_no_classdevs(cont))
+		return fn(cont, dev, NULL);
+
+	klist_for_each_entry(ic, &cont->containers, node, &iter) {
+		if (dev == ic->classdev.parent) {
+			ret = fn(cont, dev, &ic->classdev);
+			if (ret) {
+				failed = ic;
+				klist_iter_exit(&iter);
+				goto fail;
+			}
+		}
+	}
+	return 0;
+
+fail:
+	if (!undo)
+		return ret;
+
+	/* Attempt to undo the work partially done. */
+	klist_for_each_entry(ic, &cont->containers, node, &iter) {
+		if (ic == failed) {
+			klist_iter_exit(&iter);
+			break;
+		}
+		if (dev == ic->classdev.parent)
+			undo(cont, dev, &ic->classdev);
+	}
+	return ret;
+}
+
+/**
+ * attribute_container_device_trigger_safe - execute a trigger for each
+ * matching classdev or fail all of them.
+ *
+ * @dev:  The generic device to run the trigger for
+ * @fn	  the function to execute for each classdev.
+ * @undo  A function to undo the work previously done in case of error
+ *
+ * This function is a safe version of
+ * attribute_container_device_trigger. It stops on the first error and
+ * undo the partial work that has been done, on previous classdev.  It
+ * is guaranteed that either they all succeeded, or none of them
+ * succeeded.
+ */
+int
+attribute_container_device_trigger_safe(struct device *dev,
+					int (*fn)(struct attribute_container *,
+						  struct device *,
+						  struct device *),
+					int (*undo)(struct attribute_container *,
+						    struct device *,
+						    struct device *))
+{
+	struct attribute_container *cont, *failed = NULL;
+	int ret = 0;
+
+	mutex_lock(&attribute_container_mutex);
+
+	list_for_each_entry(cont, &attribute_container_list, node) {
+
+		if (!cont->match(cont, dev))
+			continue;
+
+		ret = do_attribute_container_device_trigger_safe(dev, cont,
+								 fn, undo);
+		if (ret) {
+			failed = cont;
+			break;
+		}
+	}
+
+	if (ret && !WARN_ON(!undo)) {
+		list_for_each_entry(cont, &attribute_container_list, node) {
+
+			if (failed == cont)
+				break;
+
+			if (!cont->match(cont, dev))
+				continue;
+
+			do_attribute_container_device_trigger_safe(dev, cont,
+								   undo, NULL);
+		}
+	}
+
+	mutex_unlock(&attribute_container_mutex);
+	return ret;
+
+}
+
 /**
  * attribute_container_device_trigger - execute a trigger for each matching classdev
  *
diff --git a/include/linux/attribute_container.h b/include/linux/attribute_container.h
index d12bb2153cd6..e4004d1e6725 100644
--- a/include/linux/attribute_container.h
+++ b/include/linux/attribute_container.h
@@ -54,6 +54,13 @@ void attribute_container_device_trigger(struct device *dev,
 					int (*fn)(struct attribute_container *,
 						  struct device *,
 						  struct device *));
+int attribute_container_device_trigger_safe(struct device *dev,
+					    int (*fn)(struct attribute_container *,
+						      struct device *,
+						      struct device *),
+					    int (*undo)(struct attribute_container *,
+							struct device *,
+							struct device *));
 void attribute_container_trigger(struct device *dev, 
 				 int (*fn)(struct attribute_container *,
 					   struct device *));
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200106185817.640331-2-krisman%40collabora.com.
