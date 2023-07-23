Return-Path: <open-iscsi+bncBAABB7527KSQMGQEB53TPSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3a.google.com (mail-oa1-x3a.google.com [IPv6:2001:4860:4864:20::3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDA075FB2C
	for <lists+open-iscsi@lfdr.de>; Mon, 24 Jul 2023 17:49:22 +0200 (CEST)
Received: by mail-oa1-x3a.google.com with SMTP id 586e51a60fabf-1bb72ad88f8sf1623959fac.1
        for <lists+open-iscsi@lfdr.de>; Mon, 24 Jul 2023 08:49:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690213761; cv=pass;
        d=google.com; s=arc-20160816;
        b=O0t6TMZTf4n1lRGlNYndKTsePoKz1wwzgSH9EFOxXQcyfApaiWO9Cnuhs8V2Ivbj39
         dOu6sPuehgB7R0AsW7g/VSu+U0LU7qJ1ZK57myEOh7UUESKS7Ee1DJLaxGmxWdzlA9VK
         vM6Nr/2A07oq/4PdmMe3C5JX6HYTJ/7P3UPe8/1cTtXrFcUasquhop4hdG/fUxGxcGM0
         T6KOuKYJgt9YQQvIHqLJRjXCkQuKrAHsjV84wY/3lZgwHaly0Z/O3bBUdN3917Md91aL
         Qnh2q9GAC+rSRB5bCMfps7wvBoTzcTzRFylwJ8kuJp6tXNRMDBy00BYdhCgkVsF0QFP5
         ENGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=JCJKXgQ9/sWm3oT5Wej3BoADTYSdn+t+qHKiZyqrjE8=;
        fh=j+vdfQZzifaZty+LgS20ic7lC5PGzW+oGHF4ysdsXjk=;
        b=rU6gOtK1XYx7t+e4plmIhWvqNcQUgF1LUOFrxxiNRIaosRhFVyaciIzIH3xuwM6eR2
         8sCk95cC0oLts2I18X3zjD5hOF5j+vetU6ybNW02yYvvrZYqfLK2gBa8bQqec9e+KeFO
         2VYizlqtJSzEshNBCr2mcpf2+XBmfdRlj7L2P+mucXY4Z6fP8mxyAtRiTXJ2IGRPa4nw
         Wc32dqsTo1tSh0lqvq/YYGGyCHGzYLV1V5fI9aLCHlQKsQgQGFjy0sV4e9F4gWONQWVh
         zUa9f6vq4STH73CB5jcJH65GNXXvGKHtuaGHpS+yWJCZw1Z1NeCmlYcsAcqHUi/384EA
         6S9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 52.237.72.81 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690213761; x=1690818561;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JCJKXgQ9/sWm3oT5Wej3BoADTYSdn+t+qHKiZyqrjE8=;
        b=tA1s64SBt5vIyhRmtMffg9ZQ52SSfILo4268s7dyHJoZORaCySXMNmmBcYZap8RsvE
         fWWqbLYs1an0jAiY3rHh+1fBREFqttkyAPadViLAWtgTjLrmUMECAM4kGkrSLZlGLqCS
         EoIzhxvZ+kZK6lRIVfyQSzrnsC0+qQpP9gTekVr0UGb5IOxltxk/Hv+T1QxUh6nT8cFB
         CCxgZjSawKdp2RtdSBOW7FTdU+dr9gO/MRp/YEHy7YlBqBZehOpBKB2yDxfrlJV1dJ2Y
         M4wovFT1jZSaX6qUp4Nrw8T+ZNOKcbxixC+jFutf0ab0KEjjnIC/HrmxOhpvd3D/lFxN
         22ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690213761; x=1690818561;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:x-beenthere:mime-version:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=JCJKXgQ9/sWm3oT5Wej3BoADTYSdn+t+qHKiZyqrjE8=;
        b=BdUTLBCqIXnzHuRVdCnO+QtJmY4lw9MHYWzaP5yuhUf3bRSxAPkwbMR2TYjG1OW8hD
         ChVKAI+48mDqwJZilBXwmx4B1aUfgBiIjkl5f82kPqPv0zadBxKFSDy/PnNYR5SKFD/O
         8S+pFP7k7D/ayOKpLEsjmpXmQ4PiYFwiFKGIZnhXcHcXIDKnOZd8tRUfqOUiPaOgkJ8m
         PQgn4I+rmyp3J7V/JEBort5YLUuGkTvlVGu0tf4uEMIcUWrBl38YtcFNn7GnMhEaoyiC
         DTI21OIl02o4Ky/sm+QPYR7fje3uvI4OUeAlroqIYw5sHmwjIcBA20+MEiR273jxwNCM
         Gp5g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLYATm4QMxMUCMm/fAHWcJxOX968RWNxHSJQ0U07YKVLjKe1wNyo
	9bgZ7GyprUZ5CmZu63v03rs=
X-Google-Smtp-Source: APBJJlHcHAmiDiFI5qEvaUIeD5aGxp9TKONrtV5t8a0oHZ8tthLUIQnB46nZy8wRqHB5SuRn5TROig==
X-Received: by 2002:a05:6870:4205:b0:1a6:9b66:9ebd with SMTP id u5-20020a056870420500b001a69b669ebdmr9909412oac.30.1690213760742;
        Mon, 24 Jul 2023 08:49:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6871:60d:b0:1bb:7823:8b04 with SMTP id
 w13-20020a056871060d00b001bb78238b04ls646540oan.2.-pod-prod-02-us; Mon, 24
 Jul 2023 08:49:18 -0700 (PDT)
X-Received: by 2002:a05:6870:772b:b0:1bb:576c:7397 with SMTP id dw43-20020a056870772b00b001bb576c7397mr5703959oab.11.1690213758888;
        Mon, 24 Jul 2023 08:49:18 -0700 (PDT)
Received: by 2002:a05:6808:221f:b0:3a1:e818:f37b with SMTP id 5614622812f47-3a59641798emsb6e;
        Sun, 23 Jul 2023 00:58:05 -0700 (PDT)
X-Received: by 2002:a9d:5c17:0:b0:6b7:493d:69ae with SMTP id o23-20020a9d5c17000000b006b7493d69aemr3177912otk.31.1690099085400;
        Sun, 23 Jul 2023 00:58:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690099085; cv=none;
        d=google.com; s=arc-20160816;
        b=U5g/AbTpSrKSldMwniERMUyEUvwzy9Mf5Uu2qBjLWu2chswvXsCer679jzPqkKVNPH
         ekpbNEMZLpJbJhvKpx2r+HSSRCMRAAABZvpV53lawGvlTlc2sWLjFzG38kzIEbSLfD1w
         tJ1Jy+OsALk45J4s/E6qxOeSZq4LmUIX7YEWNO3uOcmTWs0pFHXf3F6xBdl/KxcNLUs0
         ETu5RuUCQsN5+d81/f4bscRXNO5qUSFT+jmRMJguOARVH2E6pnM5kbv5K+NOtQtkQTNO
         Le/xaqOCdR6aFlHT6pNGkQi7fDjBK1HAeiK2oucGZl65dizAGFEan1ldwMPqAKgRZwE0
         /19Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=xglzrQbYTmOIm1+1ITUfGN6U9D39UXgk3oS+RcgLxtI=;
        fh=j+vdfQZzifaZty+LgS20ic7lC5PGzW+oGHF4ysdsXjk=;
        b=ACRhpMhvb0lP7HUcmcrSSv4Hi1x8J8BQMon1m6mRUUtd6ibY5A3+Hg2BqR7I1W5cTo
         GCs7hLnAs+dsos6O1KCh5BkokV661y1jRrGeyLtHwUyrWv0zlEewmJhYKzVXDQlkKdL8
         4lhLJ1U6VVCeF+maw3g5atiob9zhTeSTthD6nhfBNAjxXbnTB1QvSIfQqi1Yz+4zEXNt
         D7PckNmR+hPbwtFHflh+EHzwWHsHtEYJCAOfpt8cxLk/G1bh4MlHup8j8GVpCyqSnccM
         PRw6KxLRf0xsrGo0+z7cXNWdarIP1VYxVfyHY4xDyZb4+bGnNjx2MzSWSxNOtYpQ4IU5
         n77g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 52.237.72.81 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net. [52.237.72.81])
        by gmr-mx.google.com with ESMTP id d22-20020a05683025d600b006b885923798si502474otu.2.2023.07.23.00.58.04
        for <open-iscsi@googlegroups.com>;
        Sun, 23 Jul 2023 00:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 52.237.72.81 as permitted sender) client-ip=52.237.72.81;
Received: from localhost.localdomain (unknown [39.174.92.167])
	by mail-app3 (Coremail) with SMTP id cC_KCgCX0gGG3bxkZWl_Cw--.19305S4;
	Sun, 23 Jul 2023 15:57:58 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	michael.christie@oracle.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [PATCH v1 1/2] scsi: iscsi: Add length check for nlattr payload
Date: Sun, 23 Jul 2023 15:57:57 +0800
Message-Id: <20230723075757.3712913-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: cC_KCgCX0gGG3bxkZWl_Cw--.19305S4
X-Coremail-Antispam: 1UD129KBjvJXoW3CFyfXFyxur15WrW7uF1xZrb_yoWDtF18pF
	13Was8JrWUtF4xuF1fXr4avrWavFWrW39rtFy8K3s5Gw4qyry5GF18KwnY9FW3JrWDZ34r
	G3yUK3Z5WF1UK37anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkv14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JF0_Jw1lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK67AK6r4x
	MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr
	0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0E
	wIxGrwCI42IY6xIIjxv20xvE14v26r1I6r4UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWxJV
	W8Jr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF
	0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUm-eOUUUUU=
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linma@zju.edu.cn designates 52.237.72.81 as permitted
 sender) smtp.mailfrom=linma@zju.edu.cn
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

The current NETLINK_ISCSI netlink parsing loop checks every nlmsg to
make sure the length is bigger than the sizeof(struct iscsi_uevent) and
then calls iscsi_if_recv_msg(...).

  nlh = nlmsg_hdr(skb);
  if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
    skb->len < nlh->nlmsg_len) {
    break;
  }
  ...
  err = iscsi_if_recv_msg(skb, nlh, &group);

Hence, in iscsi_if_recv_msg, the nlmsg_data can be safely converted to
iscsi_uevent as the length is already checked.

However, in the following parsing, the length of nlattr payload is never
checked before the payload is converted to other data structures in some
consumers. A bad one for example is function iscsi_set_path(...) who
converts the payload to type iscsi_path without any checks.

  params = (struct iscsi_path *)((char *)ev + sizeof(*ev));

A good one for example is function iscsi_if_transport_conn(...) who
checks the pdu_len.

  pdu_len = nlh->nlmsg_len - sizeof(*nlh) - sizeof(*ev);
  if ((ev->u.send_pdu.hdr_size > pdu_len) ..
    err = -EINVAL;

To sum up, some consumers code called in iscsi_if_recv_msg do not check
the length of the data (see below picture)  and directly converts the
data to other structure. This could result in an out-of-bound read and
heap dirty data leakage.

             _________  nlmsg_len(nlh) _______________
            /                                         \
+----------+--------------+---------------------------+
| nlmsghdr | iscsi_uevent |          data              |
+----------+--------------+---------------------------+
                          \                          /
                         iscsi_uevent->u.set_param.len

This commit fixs the disscussed issue by adding the length check before
accessing it. To cleanup the code, an additional parameter named rlen is
added into many consumer functions prototype. The rlen is calculated in
the beginning of the iscsi_if_recv_msg which could also reduces
unnecessary duplicated calculation.

Fixes: ac20c7bf070d ("[SCSI] iscsi_transport: Added Ping support")
Fixes: 43514774ff40 ("[SCSI] iscsi class: Add new NETLINK_ISCSI messages for cnic/bnx2i driver.")
Fixes: 1d9bf13a9cf9 ("[SCSI] iscsi class: add iscsi host set param event")
Fixes: 01cb225dad8d ("[SCSI] iscsi: add target discvery event to transport class")
Fixes: 264faaaa1254 ("[SCSI] iscsi: add transport end point callbacks")
Fixes: fd7255f51a13 ("[SCSI] iscsi: add sysfs attrs for uspace sync up")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/scsi/scsi_transport_iscsi.c | 72 +++++++++++++++++------------
 1 file changed, 43 insertions(+), 29 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index e527ece12453..62b24f1c0232 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3014,14 +3014,15 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
 }
 
 static int
-iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
+iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev, u32 rlen)
 {
 	char *data = (char*)ev + sizeof(*ev);
 	struct iscsi_cls_conn *conn;
 	struct iscsi_cls_session *session;
 	int err = 0, value = 0, state;
 
-	if (ev->u.set_param.len > PAGE_SIZE)
+	if (ev->u.set_param.len > rlen ||
+	    ev->u.set_param.len > PAGE_SIZE)
 		return -EINVAL;
 
 	session = iscsi_session_lookup(ev->u.set_param.sid);
@@ -3118,7 +3119,7 @@ static int iscsi_if_ep_disconnect(struct iscsi_transport *transport,
 
 static int
 iscsi_if_transport_ep(struct iscsi_transport *transport,
-		      struct iscsi_uevent *ev, int msg_type)
+		      struct iscsi_uevent *ev, int msg_type, u32 rlen)
 {
 	struct iscsi_endpoint *ep;
 	int rc = 0;
@@ -3126,7 +3127,10 @@ iscsi_if_transport_ep(struct iscsi_transport *transport,
 	switch (msg_type) {
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT_THROUGH_HOST:
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT:
-		rc = iscsi_if_ep_connect(transport, ev, msg_type);
+		if (rlen < sizeof(struct sockaddr))
+			rc = -EINVAL;
+		else
+			rc = iscsi_if_ep_connect(transport, ev, msg_type);
 		break;
 	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
 		if (!transport->ep_poll)
@@ -3150,12 +3154,15 @@ iscsi_if_transport_ep(struct iscsi_transport *transport,
 
 static int
 iscsi_tgt_dscvr(struct iscsi_transport *transport,
-		struct iscsi_uevent *ev)
+		struct iscsi_uevent *ev, u32 rlen)
 {
 	struct Scsi_Host *shost;
 	struct sockaddr *dst_addr;
 	int err;
 
+	if (rlen < sizeof(*dst_addr))
+		return -EINVAL;
+
 	if (!transport->tgt_dscvr)
 		return -EINVAL;
 
@@ -3176,7 +3183,7 @@ iscsi_tgt_dscvr(struct iscsi_transport *transport,
 
 static int
 iscsi_set_host_param(struct iscsi_transport *transport,
-		     struct iscsi_uevent *ev)
+		     struct iscsi_uevent *ev, u32 rlen)
 {
 	char *data = (char*)ev + sizeof(*ev);
 	struct Scsi_Host *shost;
@@ -3185,7 +3192,8 @@ iscsi_set_host_param(struct iscsi_transport *transport,
 	if (!transport->set_host_param)
 		return -ENOSYS;
 
-	if (ev->u.set_host_param.len > PAGE_SIZE)
+	if (ev->u.set_host_param.len > rlen ||
+	    ev->u.set_host_param.len > PAGE_SIZE)
 		return -EINVAL;
 
 	shost = scsi_host_lookup(ev->u.set_host_param.host_no);
@@ -3202,12 +3210,15 @@ iscsi_set_host_param(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
+iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev, u32 rlen)
 {
 	struct Scsi_Host *shost;
 	struct iscsi_path *params;
 	int err;
 
+	if (rlen < sizeof(*params))
+		return -EINVAL;
+
 	if (!transport->set_path)
 		return -ENOSYS;
 
@@ -3267,12 +3278,15 @@ iscsi_set_iface_params(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_send_ping(struct iscsi_transport *transport, struct iscsi_uevent *ev)
+iscsi_send_ping(struct iscsi_transport *transport, struct iscsi_uevent *ev, u32 rlen)
 {
 	struct Scsi_Host *shost;
 	struct sockaddr *dst_addr;
 	int err;
 
+	if (rlen < sizeof(*dst_addr))
+		return -EINVAL;
+
 	if (!transport->send_ping)
 		return -ENOSYS;
 
@@ -3770,13 +3784,12 @@ iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 }
 
 static int iscsi_if_transport_conn(struct iscsi_transport *transport,
-				   struct nlmsghdr *nlh)
+				   struct nlmsghdr *nlh, u32 pdu_len)
 {
 	struct iscsi_uevent *ev = nlmsg_data(nlh);
 	struct iscsi_cls_session *session;
 	struct iscsi_cls_conn *conn = NULL;
 	struct iscsi_endpoint *ep;
-	uint32_t pdu_len;
 	int err = 0;
 
 	switch (nlh->nlmsg_type) {
@@ -3861,8 +3874,6 @@ static int iscsi_if_transport_conn(struct iscsi_transport *transport,
 
 		break;
 	case ISCSI_UEVENT_SEND_PDU:
-		pdu_len = nlh->nlmsg_len - sizeof(*nlh) - sizeof(*ev);
-
 		if ((ev->u.send_pdu.hdr_size > pdu_len) ||
 		    (ev->u.send_pdu.data_size > (pdu_len - ev->u.send_pdu.hdr_size))) {
 			err = -EINVAL;
@@ -3892,6 +3903,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	struct iscsi_internal *priv;
 	struct iscsi_cls_session *session;
 	struct iscsi_endpoint *ep = NULL;
+	u32 rlen;
 
 	if (!netlink_capable(skb, CAP_SYS_ADMIN))
 		return -EPERM;
@@ -3911,6 +3923,13 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 
 	portid = NETLINK_CB(skb).portid;
 
+	/*
+	 * Even though the remaining payload may not be regarded as nlattr,
+	 * (like address or something else), calculate the remaining length
+	 * here to ease following length checks.
+	 */
+	rlen = nlmsg_attrlen(nlh, sizeof(*ev));
+
 	switch (nlh->nlmsg_type) {
 	case ISCSI_UEVENT_CREATE_SESSION:
 		err = iscsi_if_create_session(priv, ep, ev,
@@ -3967,7 +3986,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 			err = -EINVAL;
 		break;
 	case ISCSI_UEVENT_SET_PARAM:
-		err = iscsi_if_set_param(transport, ev);
+		err = iscsi_if_set_param(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_CREATE_CONN:
 	case ISCSI_UEVENT_DESTROY_CONN:
@@ -3975,7 +3994,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_START_CONN:
 	case ISCSI_UEVENT_BIND_CONN:
 	case ISCSI_UEVENT_SEND_PDU:
-		err = iscsi_if_transport_conn(transport, nlh);
+		err = iscsi_if_transport_conn(transport, nlh, rlen);
 		break;
 	case ISCSI_UEVENT_GET_STATS:
 		err = iscsi_if_get_stats(transport, nlh);
@@ -3984,23 +4003,22 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
 	case ISCSI_UEVENT_TRANSPORT_EP_DISCONNECT:
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT_THROUGH_HOST:
-		err = iscsi_if_transport_ep(transport, ev, nlh->nlmsg_type);
+		err = iscsi_if_transport_ep(transport, ev, nlh->nlmsg_type, rlen);
 		break;
 	case ISCSI_UEVENT_TGT_DSCVR:
-		err = iscsi_tgt_dscvr(transport, ev);
+		err = iscsi_tgt_dscvr(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_SET_HOST_PARAM:
-		err = iscsi_set_host_param(transport, ev);
+		err = iscsi_set_host_param(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_PATH_UPDATE:
-		err = iscsi_set_path(transport, ev);
+		err = iscsi_set_path(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_SET_IFACE_PARAMS:
-		err = iscsi_set_iface_params(transport, ev,
-					     nlmsg_attrlen(nlh, sizeof(*ev)));
+		err = iscsi_set_iface_params(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_PING:
-		err = iscsi_send_ping(transport, ev);
+		err = iscsi_send_ping(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_GET_CHAP:
 		err = iscsi_get_chap(transport, nlh);
@@ -4009,13 +4027,10 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_delete_chap(transport, ev);
 		break;
 	case ISCSI_UEVENT_SET_FLASHNODE_PARAMS:
-		err = iscsi_set_flashnode_param(transport, ev,
-						nlmsg_attrlen(nlh,
-							      sizeof(*ev)));
+		err = iscsi_set_flashnode_param(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_NEW_FLASHNODE:
-		err = iscsi_new_flashnode(transport, ev,
-					  nlmsg_attrlen(nlh, sizeof(*ev)));
+		err = iscsi_new_flashnode(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_DEL_FLASHNODE:
 		err = iscsi_del_flashnode(transport, ev);
@@ -4030,8 +4045,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_logout_flashnode_sid(transport, ev);
 		break;
 	case ISCSI_UEVENT_SET_CHAP:
-		err = iscsi_set_chap(transport, ev,
-				     nlmsg_attrlen(nlh, sizeof(*ev)));
+		err = iscsi_set_chap(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_GET_HOST_STATS:
 		err = iscsi_get_host_stats(transport, nlh);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230723075757.3712913-1-linma%40zju.edu.cn.
