Return-Path: <open-iscsi+bncBDA4VMEL3QNRBC6XRLZQKGQEGQMBYVY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A59317C6A8
	for <lists+open-iscsi@lfdr.de>; Fri,  6 Mar 2020 20:59:08 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id y23sf2595214edt.2
        for <lists+open-iscsi@lfdr.de>; Fri, 06 Mar 2020 11:59:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583524748; cv=pass;
        d=google.com; s=arc-20160816;
        b=YjPojVhoqiaU5n5WQZniZ3FxxscbJzms4IqSb8nvzwIOJnQqbbblJWgSyc+0K2Ka/Q
         xgMDtKqD+1wW2P5LUO6VFU4Y8rv1ymcH78ki6ntaKU40PcIc3fj/gD834fOIGhx3zgX6
         adxZppbZGPgY7+zK9B3h86hfKoWnnOrJ5Ck7JDSGVjq+BybHFYbH8I6z4L0RqmIGmnwp
         PE4wSCWrbdcDDhyj3rc3p60TFGjwdMOoJD1/KRFhUwfnGFmwv0fNamFFpdLQ4ikpvxWq
         Dyzl7kn6wwRXyPEpEZjanZABLZbbaAd9b5Xnytbx8Sglk04PmNyQHv/znjvnh69nJ/RE
         F/ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=50jVg3TC1FMAUh+TPV18rM4Ibl9L6srFz7rzQPKEfbI=;
        b=DB7fodCDvqBZRn3e/g9pg+qAXdNKNf1yP/OVKBAa+ee8iySa0cd/qCd2JTDALRJgdA
         xALalY4D4sDEDBeONvptkZm1gPNoUckgLmYaD9i5DcG26SIRg7yqgineLOG5AkjA8jGb
         Z1/ZfAGeZ1XoTsUTo4I9lF6uHyw7vkV3QPnr70jn6vRdO1xri3cgR9dvnWuCQ84ZDEGP
         3UBDFGKHMbJEFYsnaqBzHYhKy5qzT+wv5qmHRWtbZevIZnjCPWdoMti5w+TJSTA9mHZW
         StxpUcgXOC8ZR41Rdm0TU8KZyLjWuxuAkZ3LojVBY9f9+2nT6uq2OgtvQ77Pr4sn92O/
         W6eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=50jVg3TC1FMAUh+TPV18rM4Ibl9L6srFz7rzQPKEfbI=;
        b=DL+F3hQaWma3Ty+1gEiGBJ9x0xxI+/fRxd0mdFQ8Dx5+h2Nfk5lHVdVHs1gdp7erkb
         n+IeXvNJVpeJQZn89UC8fRp9bjaQK6Fh81KJtxpRlQZ+sAZBiGX0nAidGpGiJuAl5mrE
         jlBvbnzj/xjSn7fFhe0g9JnW2nn6YMRUok9PKVweTZIxwUbs2Q8jX/Q4NH37VWEK6uNc
         0wjEDbBKee34zezAq82efwdbFecvdDNWeseZd++02oPZGj3CxgK7fCjfy+WCWNITCd2V
         Ca6wd2DJc+Lo3/HEoc+KneLwGgqJeUBxfBhEb/zsLnW9cpvNnEzcOSmZd7vMxI14by3U
         ng8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=50jVg3TC1FMAUh+TPV18rM4Ibl9L6srFz7rzQPKEfbI=;
        b=fI58lXDrAIba7oM197c5lozP+yc+lRy23QWvnJMvftzNssyuLmIArD11EbX7NuFr3E
         9kbuLNOmrVTydk+1T5w1pGLLsQfCgW8akOyNmUIzzI225Zk/PzutpHmnyM3cm0LxFYZ+
         GTKtgNyQ1Kn8ZWUBfRhf89XwaPK5/mRa2oDmqyC4jBzWU15N12X66n2+ok4Tp5hvYPD5
         WGO392qbU9DtUEeut0vq3qZmkcD1I68f9+0LcLciHLaxdqdBXY0iWHHVEEjTxw95U9bI
         hx/9ja60GU5U8boe2tM6KzRY5JzwTEzhJkb5NyHlIy8A/wnf7vLprhWCcBDdjKqk8p+p
         SNPg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ2yCVnSfcCk1xkKS67npO1/MdP9iBrAhpRzpKql8FFJjluvwAcy
	iWw1wfyszD5LVIwvEENJtEY=
X-Google-Smtp-Source: ADFU+vvlrrs6t2Rzwpl6n3yjD2/ffrz0cco9SLNQPuXea9mphfB7e4Bs9jlCvUAeGjQMPb7ErFcJxQ==
X-Received: by 2002:a50:f697:: with SMTP id d23mr5081202edn.80.1583524747877;
        Fri, 06 Mar 2020 11:59:07 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a50:f14a:: with SMTP id z10ls2090575edl.1.gmail; Fri, 06 Mar
 2020 11:59:07 -0800 (PST)
X-Received: by 2002:aa7:c80d:: with SMTP id a13mr5119765edt.341.1583524747316;
        Fri, 06 Mar 2020 11:59:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583524747; cv=none;
        d=google.com; s=arc-20160816;
        b=OpX+qz96TnVBvqeqziiCU+Gz7iNs3FK1or9eJFCfOAE2tJnzqrcsiZDINm+bBAii6V
         drnXkNh0SMlL49OBirv3inDp+es20uSt5F5aPSFNAfGwwoQUjKDIaJsvGODgOlkY+T9F
         R5FTo5lPHQfwo8hkyh9xh7GLyqXZINxlXMppyZiHeB4UGkf6Z7wf7zFuVTstNrlUeGD7
         EILkJC+u6jZCE3+XorSmdOJOaHEGswjI7YRiVpGFRQ8nCUBhhUATEcGPRRL/lVf3sXZF
         XPac8RduCylRMNpldcM6Z7+MauZSJt81v3V15JjB7zX2jktXWXlkvLed4KVp9gLogwbm
         ayTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=u7+OKS9vuV8w+GSKLWk7yY3hiX+Y6iazOOgrk+SuEP4=;
        b=qWuR4CvXMP2L/+IW+HuM0fA0LSyID1UqHsBVR3maDJRwpcefkfH4LzEVRCydD5ReXU
         xvJNHzCrY7i2jPKKW6SMeykaFrGVpqccYaIcdMtD3xab5QpwavBJuW1vDUIWR2htvHzJ
         19p0MzmLh6JxdoWnnsNeqjA5RT9IyIp/P1lx53UVbd2mF0upVxYHHiyfmwuJeqCgl3Rl
         ZbxvNz0GBzCLTMOKYDgieAzqAeMdsbgYD82NUKrBkGiHXvLOYs+juur2X8GLc6zB3LOw
         zcfuuQS47F63hjRdAl5PqsdhjoV75m+w2i8MlvEkUZcsJhdmxtYwafasmrQDwdbOh8fG
         AWlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id l35si125638ede.3.2020.03.06.11.59.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 06 Mar 2020 11:59:07 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::787])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BBB1729714D;
	Fri,  6 Mar 2020 19:59:06 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Bart Van Assche <bvanassche@acm.org>
Cc: open-iscsi@googlegroups.com,  lduncan@suse.com,  cleech@redhat.com,  martin.petersen@oracle.com,  linux-scsi@vger.kernel.org,  kernel@collabora.com,  Khazhismel Kumykov <khazhy@google.com>,  Junho Ryu <jayr@google.com>
Subject: Re: [PATCH v2] iscsi: Report connection state on sysfs
Organization: Collabora
References: <20200305153521.1374259-1-krisman@collabora.com>
	<bc70bd6d-6d13-4d1c-8559-140411e361d9@acm.org>
	<854kv2bobx.fsf@collabora.com>
	<b2b62579-b2b6-b797-501b-186ac24df399@acm.org>
Date: Fri, 06 Mar 2020 14:59:03 -0500
In-Reply-To: <b2b62579-b2b6-b797-501b-186ac24df399@acm.org> (Bart Van Assche's
	message of "Thu, 5 Mar 2020 13:16:08 -0800")
Message-ID: <85h7z12r20.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Reply-To: open-iscsi@googlegroups.com
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

Bart Van Assche <bvanassche@acm.org> writes:

> How about removing the loop as follows?
>

Hey, Thanks for the review.

I understand designated initializers :-P

My point was following the pattern of the other statuses sysfs files in
the iSCSI layer.

But, I really don't mind.  What do you think of v3 below?

-- >8 --
Subject: [PATCH v3] iscsi: Report connection state on sysfs

If an iSCSI connection happens to fail while the daemon isn't
running (due to a crash or for another reason), the kernel failure
report is not received.  When the daemon restarts, there is insufficient
kernel state in sysfs for it to know that this happened.  open-iscsi
tries to reopen every connection, but on different initiators, we'd like
to know which connections have failed.

There is session->state, but that has a different lifetime than an iSCSI
connection, so it doesn't directly relflect the connection state.

Cc: Khazhismel Kumykov <khazhy@google.com>
Suggested-by: Junho Ryu <jayr@google.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
Changes since v2:
  - Use designated initializers (Bart)

Changes since v1:
  - Remove dependency of state values (Bart)


 drivers/scsi/libiscsi.c             |  7 ++++++-
 drivers/scsi/scsi_transport_iscsi.c | 28 +++++++++++++++++++++++++++-
 include/scsi/scsi_transport_iscsi.h |  8 ++++++++
 3 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 70b99c0e2e67..ca488c57ead4 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3153,13 +3153,18 @@ void iscsi_conn_stop(struct iscsi_cls_conn *cls_conn, int flag)
 
 	switch (flag) {
 	case STOP_CONN_RECOVER:
+		cls_conn->state = ISCSI_CONN_FAILED;
+		break;
 	case STOP_CONN_TERM:
-		iscsi_start_session_recovery(session, conn, flag);
+		cls_conn->state = ISCSI_CONN_DOWN;
 		break;
 	default:
 		iscsi_conn_printk(KERN_ERR, conn,
 				  "invalid stop flag %d\n", flag);
+		return;
 	}
+
+	iscsi_start_session_recovery(session, conn, flag);
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_stop);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 17a45716a0fe..e2a9d48e3d8e 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2276,6 +2276,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
 	INIT_LIST_HEAD(&conn->conn_list_err);
 	conn->transport = transport;
 	conn->cid = cid;
+	conn->state = ISCSI_CONN_DOWN;
 
 	/* this is released in the dev's release function */
 	if (!get_device(&session->dev))
@@ -3709,8 +3710,11 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		break;
 	case ISCSI_UEVENT_START_CONN:
 		conn = iscsi_conn_lookup(ev->u.start_conn.sid, ev->u.start_conn.cid);
-		if (conn)
+		if (conn) {
 			ev->r.retcode = transport->start_conn(conn);
+			if (!ev->r.retcode)
+				conn->state = ISCSI_CONN_UP;
+		}
 		else
 			err = -EINVAL;
 		break;
@@ -3907,6 +3911,25 @@ iscsi_conn_attr(tcp_xmit_wsf, ISCSI_PARAM_TCP_XMIT_WSF);
 iscsi_conn_attr(tcp_recv_wsf, ISCSI_PARAM_TCP_RECV_WSF);
 iscsi_conn_attr(local_ipaddr, ISCSI_PARAM_LOCAL_IPADDR);
 
+static const char *const connection_state_names[] = {
+	[ISCSI_CONN_UP] = "up",
+	[ISCSI_CONN_DOWN] = "down",
+	[ISCSI_CONN_FAILED] = "failed"
+};
+
+static ssize_t show_conn_state(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct iscsi_cls_conn *conn = iscsi_dev_to_conn(dev->parent);
+	const char *state = "unknown";
+
+	if (conn->state < ARRAY_SIZE(connection_state_names))
+		state = connection_state_names[conn->state];
+
+	return sprintf(buf, "%s\n", state);
+}
+static ISCSI_CLASS_ATTR(conn, state, S_IRUGO, show_conn_state,
+			NULL);
 
 #define iscsi_conn_ep_attr_show(param)					\
 static ssize_t show_conn_ep_param_##param(struct device *dev,		\
@@ -3976,6 +3999,7 @@ static struct attribute *iscsi_conn_attrs[] = {
 	&dev_attr_conn_tcp_xmit_wsf.attr,
 	&dev_attr_conn_tcp_recv_wsf.attr,
 	&dev_attr_conn_local_ipaddr.attr,
+	&dev_attr_conn_state.attr,
 	NULL,
 };
 
@@ -4047,6 +4071,8 @@ static umode_t iscsi_conn_attr_is_visible(struct kobject *kobj,
 		param = ISCSI_PARAM_TCP_RECV_WSF;
 	else if (attr == &dev_attr_conn_local_ipaddr.attr)
 		param = ISCSI_PARAM_LOCAL_IPADDR;
+	else if (attr == &dev_attr_conn_state.attr)
+		return S_IRUGO;
 	else {
 		WARN_ONCE(1, "Invalid conn attr");
 		return 0;
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index fa8814245796..1b8a07b427a3 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -188,6 +188,13 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
 				  uint32_t status, uint32_t pid,
 				  uint32_t data_size, uint8_t *data);
 
+/* iscsi class connection state */
+enum {
+	ISCSI_CONN_UP = 0,
+	ISCSI_CONN_DOWN,
+	ISCSI_CONN_FAILED,
+};
+
 struct iscsi_cls_conn {
 	struct list_head conn_list;	/* item in connlist */
 	struct list_head conn_list_err;	/* item in connlist_err */
@@ -198,6 +205,7 @@ struct iscsi_cls_conn {
 	struct iscsi_endpoint *ep;
 
 	struct device dev;		/* sysfs transport/container device */
+	unsigned int state;
 };
 
 #define iscsi_dev_to_conn(_dev) \
-- 
2.25.0



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85h7z12r20.fsf%40collabora.com.
