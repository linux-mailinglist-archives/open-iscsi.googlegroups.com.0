Return-Path: <open-iscsi+bncBAABBEXTVGBAMGQE47J4FDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F80337EC3
	for <lists+open-iscsi@lfdr.de>; Thu, 11 Mar 2021 21:12:03 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id c21sf13496310oto.18
        for <lists+open-iscsi@lfdr.de>; Thu, 11 Mar 2021 12:12:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615493522; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y449DqNXHnxuze6vI0ai1HEq4zJJhgqWhIu1oxlz53wcxoP9n8Ihs7O7/FvlDzJwU+
         nUEJRtIy6j7Wz9foEw4oD3aZq5PoZFJPgbsjLJjfZ4igUiCPS3djlPSk09rgWrNI6U+g
         i4o9k2Xe+rC1LR3ftKsQbMx5Vimd/q5/r2+L4TeRC2tFiPaBr11YIQIrZbVKiEwI7saA
         qg5fJVxmIdXubYQHyyjuPO5s8sLdWl+U2sdMDWWJc6H8aYt1hrQdB3mqnsU7BHAuX46w
         2IhzxTsPR9aMF+YDpmDzfne2E9eES1716CB0VQqBmzdEejpvoVdelVZuFNTqrFCboXAc
         5oxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=dtcYTpf2dlrQwNJ3XxBojBCUbVIFx/+E3ubQ2DRMtrU=;
        b=VzFt6otwIcKKiypKlVoyJeRmAUMokluvhm1AIwoQWysieLFHu7YboCNUYqcwEKp/2U
         iZ2G7IUVV3SS8jBsVcVhocqKQCLhYrt229/hUJknOa5xmnDAhJ5CzIAUFQXNXlTrdOjo
         EoyA8okXSStAaj1lyVSTJuDb5xiz+0hzv92iVfj5DtBlvX4CKqKKgR5BeM79xyv+i+Fn
         oHOpOpa+x2HUIJGvFQuqgNb4irhHikCCzZyFn5TmezfJGy3zEL5wf2GRMsl7A7OKnSu/
         Mxy5ledvVcYBeO1yPSg/Fr1ienoqVCK9zal6QRFWoMdEcF28IaP0WtgHuD4wMj0JwSFg
         PxsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dtcYTpf2dlrQwNJ3XxBojBCUbVIFx/+E3ubQ2DRMtrU=;
        b=jR0OTeoB/8r9D7Fgkp50BQAbRGYg5eVEj41xgCAkb4bFMf5Jp1lF+9YQho+qAN0aU0
         1xpmEpKOGypwOUboIGAB304BFIy3w/VdV3cOwoOKA6DJm/CgeBRvrHz8b9VgUdnEUvUo
         HpvAmn6ah4N5B8Wpy23lGWzZZnoZOsIK6bHamLsjjuNlLQLfZS/qrwcKvnqzVf6u8503
         74l54xKNGyBYPJ8DafBjpi5rrQXwceiN+OxNOwYkVW2Nx04zfj7c/4CVZR/1O7uYfVUL
         cVkmbmxdPACz3n3tIhsMD1mBhLpegqR9AaDo5Qv/3H7dk8APc6zKNNrorzPuCK2/nM8z
         3WRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dtcYTpf2dlrQwNJ3XxBojBCUbVIFx/+E3ubQ2DRMtrU=;
        b=ZKUGbsdlZrqFHLb/fWJ4kyyryqPw/4e73clTJT5uIupBMe9AScUsgVelvT9rz1wqgT
         D78zTa+QcH39lHfeZjCeq77DE3ouoHll66DUW1VT7ZwPpGrwiyoQTuPFi3tkXOzwKr10
         ocL9v8pEaIS4KiXtz4zzSTJuLv2VCFBs4U57daeNGp/or3TWrFQRq18ZS0SHqHyr/gcg
         Wf1JyYqh0hE4YUSeT4cWI1MzBjFXOJ45rZmQUwa0NKHug5QXWSVe4P4KM4YJfArOGKPa
         863VuQk1fzlus6jGEdxr5TINCVD0xdm4+OWL8bfouK6mRDdex9HGRtmhkHgTAw69UGmT
         ypCw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533J7dAFaB3YkXczZlomFSId45rrzCr0gRZW/pB/C4UV0ZO3a1uR
	bVGjdvBQfD0nBTFYd8icnnA=
X-Google-Smtp-Source: ABdhPJw39kE8Ym0MtEKT7SD47YJWk2y1mAYZq6PEfmwO8PgHwyqtK/9Hd4X6TD12+eEWuZEcfxQ9mg==
X-Received: by 2002:aca:ab85:: with SMTP id u127mr7519735oie.113.1615493522431;
        Thu, 11 Mar 2021 12:12:02 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:c650:: with SMTP id w77ls1704499oif.1.gmail; Thu, 11 Mar
 2021 12:12:02 -0800 (PST)
X-Received: by 2002:aca:ed94:: with SMTP id l142mr7735074oih.177.1615493522065;
        Thu, 11 Mar 2021 12:12:02 -0800 (PST)
Received: by 2002:aca:fc56:0:b029:f0:e583:46d9 with SMTP id a83-20020acafc560000b02900f0e58346d9msoii;
        Tue, 2 Mar 2021 01:41:19 -0800 (PST)
X-Received: by 2002:a92:1e12:: with SMTP id e18mr16980633ile.270.1614678079039;
        Tue, 02 Mar 2021 01:41:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614678079; cv=none;
        d=google.com; s=arc-20160816;
        b=f1AHgOtamhnQVcqbyLXCmTQYKe7f9ZzEDzrZaGGFiiubGlEwqWrqAyfbfc9rw1mXfP
         Ou4hQCsvnF2rHDHsRPKbAbD8zI09l/27TXLmlGBp4RCsmzOeMJIbF8EvFfyDyBAAlVeY
         6qjLf3gPY8jDrtuD741fmcItCxhagJy7KokSHHjGk1AKGoghv1ng11QUrbhymjRFzHP6
         5OTR1eY53vuGqBOV9rnP9aBukyyWQUBLdtGvFs99/8CbnTA002KmBX8+GcACqmB+IJGy
         q1n7R4wWZENbnPBBIM+aXFA5ph5bvjaxYeN0Uum9Mq3VEd6HKxC4+XJoqe8A7sgsC6na
         UfRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=3N1FWCcqWK+J4mEy5ADpLmAXI2vd6Vhmp4qNZpAs8HQ=;
        b=KpJu4KCPvLj87WaeblOQS2OKf7ic9RyUA/zNzAOAtUpS5gP0U/Mta6Jqf9NhoAF8+L
         oQ4AhQkRqZzmxDM+gK3Wtg9XauNbL2xmqjjNvDQCY37J7TRyu1Spk4ImO7mEIzsxGh8q
         z3TdlyOlfm3z/LPC2f0mPzETxUFMc+4icmLZw7+IN6Xtoyigjwkq/6RbTm4OjCq/fe9J
         4ueQ5XluZt3YAEo5JOd4A/G5ocs13FhX20F4W7a7wtpxaUA7RGnaDg89AUaOh/mkcdtO
         cwtnU90lM69VUmimNnfKI9XCGiEvBsA4Qgy+Arse+1Y05Xm7gc7oRigmPxgiP3QJDAoF
         +kOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id c2si967512ilj.4.2021.03.02.01.41.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 01:41:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R961e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=alimailimapcm10staff010182156082;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UQ4Q0Ci_1614678045;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0UQ4Q0Ci_1614678045)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 02 Mar 2021 17:40:52 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: [PATCH] scsi: iscsi: Switch to using the new API kobj_to_dev()
Date: Tue,  2 Mar 2021 17:40:44 +0800
Message-Id: <1614678044-5635-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: jiapeng.chong@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jiapeng.chong@linux.alibaba.com designates 47.88.44.36
 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Fix the following coccicheck warnings:

./drivers/scsi/scsi_transport_iscsi.c:4453:61-62: WARNING opportunity
for kobj_to_dev().

./drivers/scsi/scsi_transport_iscsi.c:4309:61-62: WARNING opportunity
for kobj_to_dev().

./drivers/scsi/scsi_transport_iscsi.c:4040:61-62: WARNING opportunity
for kobj_to_dev().

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 969d24d..debedcd 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -4037,7 +4037,7 @@ static ISCSI_CLASS_ATTR(conn, field, S_IRUGO,				\
 static umode_t iscsi_conn_attr_is_visible(struct kobject *kobj,
 					 struct attribute *attr, int i)
 {
-	struct device *cdev = container_of(kobj, struct device, kobj);
+	struct device *cdev = kobj_to_dev(kobj);
 	struct iscsi_cls_conn *conn = transport_class_to_conn(cdev);
 	struct iscsi_transport *t = conn->transport;
 	int param;
@@ -4306,7 +4306,7 @@ static ISCSI_CLASS_ATTR(priv_sess, field, S_IRUGO | S_IWUSR,		\
 static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
 					    struct attribute *attr, int i)
 {
-	struct device *cdev = container_of(kobj, struct device, kobj);
+	struct device *cdev = kobj_to_dev(kobj);
 	struct iscsi_cls_session *session = transport_class_to_session(cdev);
 	struct iscsi_transport *t = session->transport;
 	int param;
@@ -4450,7 +4450,7 @@ static ISCSI_CLASS_ATTR(host, field, S_IRUGO, show_host_param_##param,	\
 static umode_t iscsi_host_attr_is_visible(struct kobject *kobj,
 					 struct attribute *attr, int i)
 {
-	struct device *cdev = container_of(kobj, struct device, kobj);
+	struct device *cdev = kobj_to_dev(kobj);
 	struct Scsi_Host *shost = transport_class_to_shost(cdev);
 	struct iscsi_internal *priv = to_iscsi_internal(shost->transportt);
 	int param;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1614678044-5635-1-git-send-email-jiapeng.chong%40linux.alibaba.com.
